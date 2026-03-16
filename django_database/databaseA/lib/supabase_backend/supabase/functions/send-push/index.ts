import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'
import { serve } from 'https://deno.land/std@0.168.0/http/server.ts'
import { create, getNumericDate } from "https://deno.land/x/djwt@v2.8/mod.ts";

console.log("🚀 Notification Service Started!")

// 🟢 NEW HELPER: Convert text key to binary format for Deno
function pemToBinary(pem: string) {
  // Remove the headers and newlines
  const base64 = pem
    .replace(/-----BEGIN PRIVATE KEY-----/g, '')
    .replace(/-----END PRIVATE KEY-----/g, '')
    .replace(/\s/g, '');
  
  // Decode Base64 to binary
  return Uint8Array.from(atob(base64), c => c.charCodeAt(0));
}

async function getAccessToken(serviceAccount: any) {
  const iat = getNumericDate(new Date());
  const exp = iat + 3600; 

  // 🟢 FIXED: Import the key properly using Web Crypto API
  const key = await crypto.subtle.importKey(
    "pkcs8",
    pemToBinary(serviceAccount.private_key),
    { name: "RSASSA-PKCS1-v1_5", hash: "SHA-256" },
    false,
    ["sign"]
  );

  // Sign the JWT using the imported key
  const jwt = await create(
    { alg: "RS256", typ: "JWT" },
    {
      iss: serviceAccount.client_email,
      scope: "https://www.googleapis.com/auth/firebase.messaging",
      aud: "https://oauth2.googleapis.com/token",
      exp,
      iat,
    },
    key // Pass the actual CryptoKey object here
  );

  const response = await fetch("https://oauth2.googleapis.com/token", {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body: new URLSearchParams({
      grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
      assertion: jwt,
    }),
  });

  const data = await response.json();
  // Log error if Google rejects the token request
  if (data.error) {
    throw new Error(`Google Auth Failed: ${data.error_description || data.error}`);
  }
  return data.access_token;
}

serve(async (req) => {
  try {
    const payload = await req.json();
    const { record, old_record } = payload;

    // 1. Check Restock Logic
    const oldQty = old_record?.quantity ?? 0;
    const newQty = record?.quantity ?? 0;
    if (oldQty > 0 || newQty <= 0) {
      return new Response("No restock detected.", { status: 200 });
    }

    console.log(`🔔 Event Triggered for Store: ${record.store_id}, Item: ${record.item_id}`);

    // 2. Setup Client
    const supabase = createClient(
      Deno.env.get('SUPABASE_URL')!,
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    );

    // 3. Get Names
    const { data: details, error: dbError } = await supabase
      .from('stock')
      .select('items(name), stores(name)')
      .eq('id', record.id)
      .maybeSingle();

    if (dbError) console.error("⚠️ DB Error:", dbError.message);

    const itemName = details?.items?.name ?? "Special Item";
    const storeName = details?.stores?.name ?? "SupplyCo Store";
    const storeIdString = String(record.store_id);

    // 4. Find Users
    const { data: users } = await supabase
      .from('user_details')
      .select('fcm_token')
      .eq('last_selected_supplyco', storeIdString) 
      .not('fcm_token', 'is', null);

    if (!users || users.length === 0) {
      console.log("ℹ️ No users subscribed to Store ID:", storeIdString);
      return new Response("No users to notify.", { status: 200 });
    }

    // 5. Firebase Auth
    const serviceAccountStr = Deno.env.get('FIREBASE_SERVICE_ACCOUNT');
    if (!serviceAccountStr) throw new Error("Missing FIREBASE_SERVICE_ACCOUNT secret");
    
    // Parse the JSON (This works now because you fixed the secret!)
    const serviceAccount = JSON.parse(serviceAccountStr);
    
    // Get the Access Token (This works now because we convert the key!)
    const accessToken = await getAccessToken(serviceAccount);
    const projectId = serviceAccount.project_id;

    // 6. Send Notifications
    console.log(`🚀 Sending to ${users.length} users...`);
    
    const notifications = users.map(async (user) => {
      try {
        const res = await fetch(`https://fcm.googleapis.com/v1/projects/${projectId}/messages:send`, {
          method: "POST",
          headers: { Authorization: `Bearer ${accessToken}`, "Content-Type": "application/json" },
          body: JSON.stringify({
            message: {
              token: user.fcm_token,
              notification: {
                title: `Restock at ${storeName}! 📦`,
                body: `${itemName} is now back in stock. Tap to check!`,
              },
              data: {
                click_action: "FLUTTER_NOTIFICATION_CLICK",
                store_id: storeIdString,
                item_id: String(record.item_id),
              },
            },
          }),
        });
        
        if (res.status !== 200) {
            const errText = await res.text();
            console.error(`❌ FCM Failed: ${res.status} - ${errText}`);
        } else {
            console.log("✅ Notification sent successfully");
        }
      } catch (e) { console.error("Network Error:", e); }
    });

    await Promise.all(notifications);
    return new Response(`Success. Notified ${users.length} users.`, { status: 200 });

  } catch (err) {
    console.error("🚨 CRITICAL CRASH:", err.message);
    return new Response(String(err.message), { status: 500 });
  }
});
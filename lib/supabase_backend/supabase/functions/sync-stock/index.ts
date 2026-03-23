import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

Deno.serve(async (_req: Request) => {
  const SYNC_ID = 1;
  const BUFFER_MS = 60000;
  const JSON_HEADERS = { 'Content-Type': 'application/json' };
  const syncStartTime = new Date(Date.now() - BUFFER_MS).toISOString();

  try {
    const supabase = createClient(
      Deno.env.get('SUPABASE_URL')!,
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    );

// 1. Get Checkpoint
    const { data: meta } = await supabase
      .from('sync_metadata')
      .select('last_sync')
      .eq('id', SYNC_ID)
      .maybeSingle();

    // Store the raw ISO string from the DB
    const rawTimestamp = meta?.last_sync ?? '1900-01-01T00:00:00Z';

    // 🟢 FORMAT FOR DJANGO: 
    // Convert "2026-03-23T10:00:31.093Z" -> "2026-03-23 10:00:31"
    const djangoFriendlySyncTime = rawTimestamp
        .replace('T', ' ')
        .split('.')[0]
        .replace('Z', '');


    // 2. Fetch from Django
    const baseUrl = Deno.env.get('DJANGO_API_URL');
    const apiKey = Deno.env.get('DJANGO_API_KEY');
    // Use the new variable name 'djangoFriendlySyncTime'
    const djangoUrl = `${baseUrl}?api_key=${apiKey}&last_sync_time=${encodeURIComponent(djangoFriendlySyncTime)}`;

    console.log(`🔗 Requesting URL: ${baseUrl}?api_key=REDACTED&last_sync_time=${djangoFriendlySyncTime}`);

    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), 30000);

    try {
      const response = await fetch(djangoUrl, { signal: controller.signal });
      clearTimeout(timeoutId);

      if (!response.ok) {
        const errorBody = await response.text();
        throw new Error(`Gov DB Error (${response.status}): ${errorBody || response.statusText}`);
      }

      const updatesRaw = await response.json();
      if (!Array.isArray(updatesRaw)) throw new Error('Invalid API Response: Expected an array.');

      const updates = updatesRaw
        .filter(item => item.store != null && item.item != null)
        .map((item: any) => ({
          store_id: item.store,
          item_id: item.item,
          quantity: item.quantity ?? 0,
          last_updated_at: item.last_updated ?? new Date().toISOString(),
        }));

      // 3. Batch Upsert with "Self-Healing" Logic
      if (updates.length > 0) {
        const chunkSize = 100; // Smaller chunks are better for self-healing
        for (let i = 0; i < updates.length; i += chunkSize) {
          const chunk = updates.slice(i, i + chunkSize);
          
          const { error } = await supabase
            .from('stock')
            .upsert(chunk, { onConflict: 'store_id,item_id' });

          if (error) {
            // 🟢 SELF-HEAL TRIGGER: If a Foreign Key error (23503) occurs
            if (error.code === '23503') {
              console.warn(`⚠️ Foreign Key violation in chunk starting at index ${i}. Attempting to heal...`);
              
              // Re-run this specific chunk item-by-item to save the valid ones
              for (const singleItem of chunk) {
                const { error: singleError } = await supabase
                  .from('stock')
                  .upsert(singleItem, { onConflict: 'store_id,item_id' });
                
                if (singleError && singleError.code === '23503') {
                  console.error(`❌ Skipping Item ID: ${singleItem.item_id} (Not found in 'items' table)`);
                  continue; // Skip only this specific bad item
                } else if (singleError) {
                  throw singleError; // If it's a different error, stop
                }
              }
            } else {
              // If it's a different DB error (connection, etc.), stop the sync
              throw error;
            }
          }
        }
      }

      // 4. Update Checkpoint
      await supabase.from('sync_metadata').upsert({ id: SYNC_ID, last_sync: syncStartTime });

      return new Response(JSON.stringify({ success: true, count: updates.length }), { headers: JSON_HEADERS });

    } catch (err) {
      if (err.name === 'AbortError') throw new Error('Django API Timeout after 30s');
      throw err;
    }
  } catch (error) {
    const msg = error instanceof Error ? error.message : JSON.stringify(error);
    console.error(`❌ Sync Error:`, msg);
    
    return new Response(JSON.stringify({ error: msg }), { 
      status: 500, 
      headers: JSON_HEADERS 
    });
  }
});
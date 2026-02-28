import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

// Fix 1: Add type for the request object
Deno.serve(async (_req: Request) => {
  try {
    // 1. Setup Supabase Admin Client
    const supabase = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''
    )

    // 2. Get the Last Sync Time from Supabase
    const { data: meta } = await supabase
      .from('sync_metadata')
      .select('last_sync')
      .eq('id', 1)
      .single()

    const lastSync = meta?.last_sync ?? '2000-01-01T00:00:00Z'
    console.log(`🔄 Syncing from: ${lastSync}`)

    // 3. Call Django API
    const djangoUrl = `${Deno.env.get('DJANGO_API_URL')}?last_sync_time=${lastSync}`
    
    const response = await fetch(djangoUrl, {
      method: 'GET',
      headers: { 
        'X-API-KEY': Deno.env.get('DJANGO_API_KEY') ?? '', 
        'Content-Type': 'application/json'
      }
    })

    if (!response.ok) throw new Error(`Django Error: ${response.statusText}`)

    const updates = await response.json()
    console.log(`📦 Received ${updates.length} updates`)

    // 4. Update Supabase Stock Table
    if (updates.length > 0) {
      // Upsert data. 
      // Note: 'store_id' and 'item_id' MUST match your DB columns
      const { error } = await supabase
        .from('stock')
        .upsert(updates, { onConflict: 'store_id, item_id' })

      if (error) throw error

      // 5. Update the Checkpoint
      await supabase
        .from('sync_metadata')
        .upsert({ id: 1, last_sync: new Date().toISOString() })
    }

    return new Response(JSON.stringify({ success: true, count: updates.length }), {
      headers: { "Content-Type": "application/json" }
    })

  } catch (error) {
    // Fix 2: Typecast error to handle 'unknown' type safely
    const errorMessage = error instanceof Error ? error.message : String(error)
    
    return new Response(JSON.stringify({ error: errorMessage }), { 
        status: 500,
        headers: { "Content-Type": "application/json" }
    })
  }
})
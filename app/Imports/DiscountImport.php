<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToCollection;

class DiscountImport implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $collection)
    {
        unset($collection[0]);
        $data = array_filter($collection->toArray(),function ($number) {
            return $number[0] !== null;
        });
        // dd($data);
        try {
            DB::beginTransaction();
            foreach ($data as $value) {
                $item = DB::table('inventories')->where('sku',$value[0])->first();
                $item->disc_status = 1;
                $item->update();
                DB::table('campaign_products')->updateOrInsert(
                    [
                        'product_id' => $item->product_id,
                        'campaign_id' => 15
                    ],[
                        'status' => 1,
                        'created_at' => now(),
                        'updated_at' => now()
                    ]);
                DB::table('discounts')->updateOrInsert(
                    [
                        'product_id' => $item->product_id,
                    ],[
                    'discount_amount' => (int)$value[1],
                    'discount_type' => 'percentage',
                    'type' => 'campaign',
                    'max_amount' => NULL,
                    'disc_sku' => $value[0],
                    'status' => 1,
                    'created_at' => now(),
                    'updated_at' => now()
                ]);
            }
            DB::commit();
        } catch (\Throwable $th) {
            //throw $th;
            DB::rollBack();
            return $th;

        }
    }
}

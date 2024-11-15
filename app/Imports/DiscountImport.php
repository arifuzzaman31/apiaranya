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
        try {
            DB::beginTransaction();
            foreach ($data as $value) {
                $item = DB::table('inventories')->where('sku',$value[0])->first();
                DB::table('campaign_products')->updateOrInsert(
                    [
                        'product_id' => $item->product_id,
                        'campaign_id' => (int)$value[5]
                    ],[
                        'status' => 1,
                        'created_at' => now(),
                        'updated_at' => now()
                    ]);
                DB::table('discounts')->insert([
                    'product_id' => $item->product_id,
                    'discount_amount' => (int)$value[1],
                    'discount_type' => $value[2],
                    'type' => $value[3],
                    'max_amount' => NULL,
                    'disc_sku' => $value[0],
                    'status' => 1,
                    'created_at' => now(),
                    'updated_at' => now()
                ]);
            }
            DB::table('inventories')->whereIn('sku',array_column($data, 0))->update(['disc_status' => 1]);
            DB::commit();
        } catch (\Throwable $th) {
            //throw $th;
            DB::rollBack();
            return $th;

        }
    }
}

<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use DB;

class StockUpdateImport implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $rows)
    {
        unset($rows[0]);
        $data = array_filter($rows->toArray(),function ($number) {
            return $number[0] !== null;
        });

        foreach($data as $row)
        {
            try {
                DB::beginTransaction();
                DB::table('inventories')
                    ->where('sku', $row[0])
                    ->update(['stock' => $row[1]]);
                DB::commit();
            } catch (\Throwable $th) {
                //throw $th;
                DB::rollBack();
                return $th;
    
            }
        }
    }
}

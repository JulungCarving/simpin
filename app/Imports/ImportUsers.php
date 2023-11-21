<?php

namespace App\Imports;

use Carbon\Carbon;
use App\Models\User;
use Maatwebsite\Excel\Row;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToModel;
use PhpOffice\PhpSpreadsheet\Shared\Date;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\SkipsEmptyRows;
use Maatwebsite\Excel\Concerns\WithProgressBar;
use Maatwebsite\Excel\Concerns\WithStartRow;

class ImportUsers implements ToModel, WithProgressBar, WithStartRow, SkipsEmptyRows
{
    use Importable;

    public function transformDate($value, $format = 'Y-m-d')
    {
    try {
        return \Carbon\Carbon::instance(\PhpOffice\PhpSpreadsheet\Shared\Date::excelToDateTimeObject((int)$value));
    } catch (\ErrorException $e) {
        return \Carbon\Carbon::createFromFormat($format, $value);
    }
    }
    
    public function model(array $row)
    {
        return new user([
        'name'          => $row[0],
        'nip'           => $row[1],
        'nag'           => $row[2],
        'tgl_joint'     => $this->transformDate($row[3]),
        'ukers_id'      => $row[4],
        'is_active'     => $row[5],
        'is_admin'      => $row[6],
        'user_kats_id'  => $row[7],
        'bank_id'       => $row[8],
        'norek'         => $row[9],
        'phone_number'  => $row[10], 
    ]);
    }

    public function startRow(): int
    {
        return 2;
    }
    
}
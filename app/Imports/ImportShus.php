<?php

namespace App\Imports;

use Carbon\Carbon;
use App\Models\Datashu;
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
        return new Datashu([
            'users_id'      => $row[0],
            'thn_buku'      => $row[1],
            'thn_input'     => $row[2],
            'bln_input'     => $row[3],
            'saldo_awal'    => $row[4],
            'saldo_masuk'   => $row[5],
            'saldo_keluar'  => $row[6],
            'saldo_akhir'   => $row[7],
            // 'tgl_joint'     => $this->transformDate($row[3]),
    ]);
    }

    public function startRow(): int
    {
        return 2;
    }
    
}
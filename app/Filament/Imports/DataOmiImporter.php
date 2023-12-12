<?php

namespace App\Filament\Imports;

use App\Models\DataOmi;
use Filament\Actions\Imports\ImportColumn;
use Filament\Actions\Imports\Importer;
use Filament\Actions\Imports\Models\Import;

class DataOmiImporter extends Importer
{
    protected static ?string $model = DataOmi::class;

    public static function getColumns(): array
    {
        return [
            ImportColumn::make('nag')
                ->example('123123')
                ->rules(['max:50']),
            ImportColumn::make('thn')
            ->example('2023')
                ->rules(['max:255']),
            ImportColumn::make('bln')
            ->example('12')
                ->rules(['max:255']),
            ImportColumn::make('nominal')
            ->example('0')
                ->rules(['max:255']),
            ImportColumn::make('potongan_id')
            ->example('1')
                ->numeric()
                ->rules(['integer']),
        ];
    }

    public function resolveRecord(): ?DataOmi
    {
        // return DataOmi::firstOrNew([
        //     // Update existing records, matching them by `$this->data['column_name']`
        //     'email' => $this->data['email'],
        // ]);

        return new DataOmi();
    }

    public static function getCompletedNotificationBody(Import $import): string
    {
        $body = 'Your data omi import has completed and ' . number_format($import->successful_rows) . ' ' . str('row')->plural($import->successful_rows) . ' imported.';

        if ($failedRowsCount = $import->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to import.';
        }

        return $body;
    }
}

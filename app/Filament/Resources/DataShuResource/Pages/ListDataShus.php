<?php

namespace App\Filament\Resources\DataShuResource\Pages;

use App\Filament\Resources\DataShuResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use EightyNine\ExcelImport\ExcelImportAction;

class ListDataShus extends ListRecords
{
    protected static string $resource = DataShuResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Pengambilan SHU'),
            ExcelImportAction::make()
                    ->slideOver()
                    ->color("primary")
                    ->use(ImportShus::class),
            // Actions\CreateAction::make(),
        ];
    }
}

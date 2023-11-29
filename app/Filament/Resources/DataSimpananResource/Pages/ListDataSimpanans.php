<?php

namespace App\Filament\Resources\DataSimpananResource\Pages;

use App\Filament\Resources\DataSimpananResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDataSimpanans extends ListRecords
{
    protected static string $resource = DataSimpananResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

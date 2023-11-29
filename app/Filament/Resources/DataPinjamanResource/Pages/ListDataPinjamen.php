<?php

namespace App\Filament\Resources\DataPinjamanResource\Pages;

use App\Filament\Resources\DataPinjamanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDataPinjamen extends ListRecords
{
    protected static string $resource = DataPinjamanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

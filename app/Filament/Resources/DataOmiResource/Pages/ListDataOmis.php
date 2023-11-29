<?php

namespace App\Filament\Resources\DataOmiResource\Pages;

use App\Filament\Resources\DataOmiResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDataOmis extends ListRecords
{
    protected static string $resource = DataOmiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

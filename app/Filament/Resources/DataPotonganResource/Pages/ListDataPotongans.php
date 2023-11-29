<?php

namespace App\Filament\Resources\DataPotonganResource\Pages;

use App\Filament\Resources\DataPotonganResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDataPotongans extends ListRecords
{
    protected static string $resource = DataPotonganResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

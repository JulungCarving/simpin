<?php

namespace App\Filament\Resources\JnsSimpananResource\Pages;

use App\Filament\Resources\JnsSimpananResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListJnsSimpanans extends ListRecords
{
    protected static string $resource = JnsSimpananResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

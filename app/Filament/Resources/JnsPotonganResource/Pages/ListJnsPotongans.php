<?php

namespace App\Filament\Resources\JnsPotonganResource\Pages;

use App\Filament\Resources\JnsPotonganResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListJnsPotongans extends ListRecords
{
    protected static string $resource = JnsPotonganResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

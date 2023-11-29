<?php

namespace App\Filament\Resources\JnsPinjamanResource\Pages;

use App\Filament\Resources\JnsPinjamanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListJnsPinjaman extends ListRecords
{
    protected static string $resource = JnsPinjamanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

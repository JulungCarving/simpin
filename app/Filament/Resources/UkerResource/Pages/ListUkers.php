<?php

namespace App\Filament\Resources\UkerResource\Pages;

use App\Filament\Resources\UkerResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListUkers extends ListRecords
{
    protected static string $resource = UkerResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

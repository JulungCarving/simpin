<?php

namespace App\Filament\Resources\UkerKatResource\Pages;

use App\Filament\Resources\UkerKatResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListUkerKats extends ListRecords
{
    protected static string $resource = UkerKatResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

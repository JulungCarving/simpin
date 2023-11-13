<?php

namespace App\Filament\Resources\UserKatResource\Pages;

use App\Filament\Resources\UserKatResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListUserKats extends ListRecords
{
    protected static string $resource = UserKatResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

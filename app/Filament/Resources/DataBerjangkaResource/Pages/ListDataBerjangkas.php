<?php

namespace App\Filament\Resources\DataBerjangkaResource\Pages;

use App\Filament\Resources\DataBerjangkaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDataBerjangkas extends ListRecords
{
    protected static string $resource = DataBerjangkaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

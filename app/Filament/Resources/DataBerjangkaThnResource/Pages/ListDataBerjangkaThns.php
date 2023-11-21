<?php

namespace App\Filament\Resources\DataBerjangkaThnResource\Pages;

use App\Filament\Resources\DataBerjangkaThnResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDataBerjangkaThns extends ListRecords
{
    protected static string $resource = DataBerjangkaThnResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

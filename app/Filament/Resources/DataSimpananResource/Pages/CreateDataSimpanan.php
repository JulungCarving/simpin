<?php

namespace App\Filament\Resources\DataSimpananResource\Pages;

use App\Filament\Resources\DataSimpananResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateDataSimpanan extends CreateRecord
{
    protected static string $resource = DataSimpananResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

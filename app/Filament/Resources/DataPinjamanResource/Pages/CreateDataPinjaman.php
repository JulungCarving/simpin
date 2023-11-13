<?php

namespace App\Filament\Resources\DataPinjamanResource\Pages;

use App\Filament\Resources\DataPinjamanResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateDataPinjaman extends CreateRecord
{
    protected static string $resource = DataPinjamanResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

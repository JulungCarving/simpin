<?php

namespace App\Filament\Resources\DataShuResource\Pages;

use App\Filament\Resources\DataShuResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateDataShu extends CreateRecord
{
    protected static string $resource = DataShuResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

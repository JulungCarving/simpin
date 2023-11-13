<?php

namespace App\Filament\Resources\UkerKatResource\Pages;

use App\Filament\Resources\UkerKatResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateUkerKat extends CreateRecord
{
    protected static string $resource = UkerKatResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

<?php

namespace App\Filament\Resources\UserKatResource\Pages;

use App\Filament\Resources\UserKatResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateUserKat extends CreateRecord
{
    protected static string $resource = UserKatResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

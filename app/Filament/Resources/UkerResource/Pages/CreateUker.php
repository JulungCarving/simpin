<?php

namespace App\Filament\Resources\UkerResource\Pages;

use App\Filament\Resources\UkerResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateUker extends CreateRecord
{
    protected static string $resource = UkerResource::class;
    
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

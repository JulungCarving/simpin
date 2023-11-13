<?php

namespace App\Filament\Resources\UkerResource\Pages;

use App\Filament\Resources\UkerResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditUker extends EditRecord
{
    protected static string $resource = UkerResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

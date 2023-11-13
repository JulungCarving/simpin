<?php

namespace App\Filament\Resources\UkerKatResource\Pages;

use App\Filament\Resources\UkerKatResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditUkerKat extends EditRecord
{
    protected static string $resource = UkerKatResource::class;

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

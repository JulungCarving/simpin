<?php

namespace App\Filament\Resources\DataPinjamanResource\Pages;

use App\Filament\Resources\DataPinjamanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDataPinjaman extends EditRecord
{
    protected static string $resource = DataPinjamanResource::class;

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

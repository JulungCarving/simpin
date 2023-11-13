<?php

namespace App\Filament\Resources\DataShuResource\Pages;

use App\Filament\Resources\DataShuResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDataShu extends EditRecord
{
    protected static string $resource = DataShuResource::class;

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

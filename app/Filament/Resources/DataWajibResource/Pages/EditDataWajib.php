<?php

namespace App\Filament\Resources\DataWajibResource\Pages;

use App\Filament\Resources\DataWajibResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDataWajib extends EditRecord
{
    protected static string $resource = DataWajibResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

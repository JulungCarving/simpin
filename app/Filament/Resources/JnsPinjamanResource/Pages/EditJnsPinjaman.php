<?php

namespace App\Filament\Resources\JnsPinjamanResource\Pages;

use App\Filament\Resources\JnsPinjamanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditJnsPinjaman extends EditRecord
{
    protected static string $resource = JnsPinjamanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

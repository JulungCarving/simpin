<?php

namespace App\Filament\Resources\JnsPotonganResource\Pages;

use App\Filament\Resources\JnsPotonganResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditJnsPotongan extends EditRecord
{
    protected static string $resource = JnsPotonganResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

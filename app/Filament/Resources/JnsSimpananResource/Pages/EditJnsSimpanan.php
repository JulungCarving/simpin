<?php

namespace App\Filament\Resources\JnsSimpananResource\Pages;

use App\Filament\Resources\JnsSimpananResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditJnsSimpanan extends EditRecord
{
    protected static string $resource = JnsSimpananResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

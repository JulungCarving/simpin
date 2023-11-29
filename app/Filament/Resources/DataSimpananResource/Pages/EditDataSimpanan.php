<?php

namespace App\Filament\Resources\DataSimpananResource\Pages;

use App\Filament\Resources\DataSimpananResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDataSimpanan extends EditRecord
{
    protected static string $resource = DataSimpananResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

<?php

namespace App\Filament\Resources\DataOmiResource\Pages;

use App\Filament\Resources\DataOmiResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDataOmi extends EditRecord
{
    protected static string $resource = DataOmiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

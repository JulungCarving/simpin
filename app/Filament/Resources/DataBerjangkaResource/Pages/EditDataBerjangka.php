<?php

namespace App\Filament\Resources\DataBerjangkaResource\Pages;

use App\Filament\Resources\DataBerjangkaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDataBerjangka extends EditRecord
{
    protected static string $resource = DataBerjangkaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

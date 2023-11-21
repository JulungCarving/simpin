<?php

namespace App\Filament\Resources\DataBerjangkaThnResource\Pages;

use App\Filament\Resources\DataBerjangkaThnResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDataBerjangkaThn extends EditRecord
{
    protected static string $resource = DataBerjangkaThnResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

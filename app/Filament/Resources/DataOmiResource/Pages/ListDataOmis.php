<?php

namespace App\Filament\Resources\DataOmiResource\Pages;

use App\Filament\Imports\DataOmiImporter;
use Filament\Actions;
use Filament\Actions\ImportAction;
use App\Filament\Imports\ProductImporter;
use Filament\Resources\Pages\ListRecords;
use App\Filament\Resources\DataOmiResource;


class ListDataOmis extends ListRecords
{
    protected static string $resource = DataOmiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
            ImportAction::make()
            ->label('Import Data')
            ->importer(DataOmiImporter::class)
        ];
        
    }

    
}

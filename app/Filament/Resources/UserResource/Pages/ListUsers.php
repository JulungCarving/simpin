<?php

namespace App\Filament\Resources\UserResource\Pages;

use Filament\Actions;
use App\Imports\ImportUsers;
use App\Filament\Resources\UserResource;
use Filament\Resources\Pages\ListRecords;
use Filament\Tables\Actions\CreateAction;
use EightyNine\ExcelImport\ExcelImportAction;
use Konnco\FilamentImport\Actions\ImportField;
use Konnco\FilamentImport\Actions\ImportAction;

class ListUsers extends ListRecords
{
    protected static string $resource = UserResource::class;

    // protected $dateFormat = 'Y-m-d';

    protected function getHeaderActions(): array
    {
        // return [
        //     ExcelImportAction::make()
        //         ->color("primary"),
        //     Actions\CreateAction::make(),
        // ];

        return [
            ExcelImportAction::make()
                ->slideOver()
                ->color("primary")
                ->use(ImportUsers::class),
            Actions\CreateAction::make(),
        ];
    }

    // protected function getHeaderActions(): array
    // {
    //     return [
    //         Actions\CreateAction::make(),
    //         ImportAction::make()
    //         ->uniqueField('nag')
    //             ->fields([
    //                 ImportField::make('ukers_id')
    //                     ->label('Unit Kerja Id')
    //                     ->required(),
    //                 ImportField::make('name')
    //                     ->label('Nama')
    //                     ->required(),
    //                 ImportField::make('email')
    //                     ->label('Email')
    //                     ->required(),
    //                 ImportField::make('nag')
    //                     ->label('NAG')
    //                     ->required(),
    //                 ImportField::make('is_active')
    //                     ->label('Active')
    //                     ->required(),
    //             ])
    //     ];
    // }
}

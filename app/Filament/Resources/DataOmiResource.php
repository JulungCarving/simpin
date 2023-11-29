<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DataOmiResource\Pages;
use App\Filament\Resources\DataOmiResource\RelationManagers;
use App\Models\DataOmi;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DataOmiResource extends Resource
{
    protected static ?string $model = DataOmi::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function getPluralLabel(): ?string
    {
        return 'Data OMI';
    }
    public static function getNavigationGroup() : String
    {
        return 'KEWAJIBAN';
    }
    protected static ?int $navigationSort =2;
    public static function getSlug(): string
    {
        return 'data-omi';
    } 

    

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListDataOmis::route('/'),
            'create' => Pages\CreateDataOmi::route('/create'),
            'edit' => Pages\EditDataOmi::route('/{record}/edit'),
        ];
    }
}

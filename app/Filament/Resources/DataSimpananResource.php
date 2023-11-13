<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DataSimpananResource\Pages;
use App\Filament\Resources\DataSimpananResource\RelationManagers;
use App\Models\DataSimpanan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DataSimpananResource extends Resource
{
    protected static ?string $model = DataSimpanan::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Simpanan';

    public static function getNavigationGroup() : String
    {
        return 'Transaction';
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
            'index' => Pages\ListDataSimpanans::route('/'),
            'create' => Pages\CreateDataSimpanan::route('/create'),
            'edit' => Pages\EditDataSimpanan::route('/{record}/edit'),
        ];
    }    
}

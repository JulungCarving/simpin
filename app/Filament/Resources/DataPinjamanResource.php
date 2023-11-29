<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DataPinjamanResource\Pages;
use App\Filament\Resources\DataPinjamanResource\RelationManagers;
use App\Models\DataPinjaman;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DataPinjamanResource extends Resource
{
    protected static ?string $model = DataPinjaman::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function getPluralLabel(): ?string
    {
        return 'Data Pinjaman';
    }
    public static function getNavigationGroup() : String
    {
        return 'KEWAJIBAN';
    }
    protected static ?int $navigationSort =1;
    public static function getSlug(): string
    {
        return 'data-pinjaman';
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
            'index' => Pages\ListDataPinjamen::route('/'),
            'create' => Pages\CreateDataPinjaman::route('/create'),
            'edit' => Pages\EditDataPinjaman::route('/{record}/edit'),
        ];
    }
}

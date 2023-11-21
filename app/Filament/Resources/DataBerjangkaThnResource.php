<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DataBerjangkaThnResource\Pages;
use App\Filament\Resources\DataBerjangkaThnResource\RelationManagers;
use App\Models\DataBerjangkaThn;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DataBerjangkaThnResource extends Resource
{
    protected static ?string $model = DataBerjangkaThn::class;

    protected static ?string $navigationIcon = 'heroicon-o-arrows-pointing-in';

    public static function getNavigationGroup() : String
    {
        return 'Simpanan';
    }
    protected static ?int $navigationSort =4;
    public static function getSlug(): string
    {
        return 'data-simpanan-berjangka-thn';
    }
    public static function getPluralLabel(): ?string
    {
        return 'Simpanan Berjangka Tahunan';
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
            'index' => Pages\ListDataBerjangkaThns::route('/'),
            'create' => Pages\CreateDataBerjangkaThn::route('/create'),
            'edit' => Pages\EditDataBerjangkaThn::route('/{record}/edit'),
        ];
    }
}

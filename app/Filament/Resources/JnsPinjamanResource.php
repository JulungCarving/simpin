<?php

namespace App\Filament\Resources;

use App\Filament\Resources\JnsPinjamanResource\Pages;
use App\Filament\Resources\JnsPinjamanResource\RelationManagers;
use App\Models\JnsPinjaman;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class JnsPinjamanResource extends Resource
{
    protected static ?string $model = JnsPinjaman::class;
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    public static function getPluralLabel(): ?string
    {
        return 'Jenis Pinjaman';
    }
    protected static ?int $navigationSort =2;
    public static function getSlug(): string
    {
        return 'jenis-pinjaman';
    } 
    public static function getNavigationGroup() : String
    {
        return 'Master Data';
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
            'index' => Pages\ListJnsPinjamen::route('/'),
            'create' => Pages\CreateJnsPinjaman::route('/create'),
            'edit' => Pages\EditJnsPinjaman::route('/{record}/edit'),
        ];
    }
}

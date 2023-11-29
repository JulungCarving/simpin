<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\JnsPinjaman;
use Filament\Resources\Resource;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\JnsPinjamanResource\Pages;
use App\Filament\Resources\JnsPinjamanResource\RelationManagers;

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
            Tables\Columns\TextColumn::make('pinjaman_name')
                ->label(label:'Jenis Pinjaman ')
                ->searchable(),
            Tables\Columns\TextColumn::make('bunga_pertahun')
                ->label(label:'Bunga / Tahun')
                ->searchable(),
            Tables\Columns\TextColumn::make('plafon')
                ->label(label:'Plafon')
                ->prefix('Rp. ')
                ->numeric()
                ->searchable(),
            Tables\Columns\TextColumn::make('keterangan')
                ->label(label:'Description')
                ->searchable(),
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
            'index' => Pages\ListJnsPinjaman::route('/'),
            'create' => Pages\CreateJnsPinjaman::route('/create'),
            'edit' => Pages\EditJnsPinjaman::route('/{record}/edit'),
        ];
    }
}

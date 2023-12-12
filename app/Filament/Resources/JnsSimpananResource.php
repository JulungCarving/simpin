<?php

namespace App\Filament\Resources;

use App\Filament\Resources\JnsSimpananResource\Pages;
use App\Filament\Resources\JnsSimpananResource\RelationManagers;
use App\Models\JnsSimpanan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class JnsSimpananResource extends Resource
{
    protected static ?string $model = JnsSimpanan::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    public static function getPluralLabel(): ?string
    {
        return 'Jenis Simpanan';
    }
    protected static ?int $navigationSort =1;
    public static function getSlug(): string
    {
        return 'jenis-simpanan';
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
            Tables\Columns\TextColumn::make('simpanan_name')
                ->label(label:'Jenis Simpanan ')
                ->searchable(),
            Tables\Columns\TextColumn::make('bunga_pertahun')
                ->label(label:'Bunga/Tahun')
                ->searchable(),
            Tables\Columns\TextColumn::make('ppn_bunga')
                ->label(label:'PPN Bunga')
                ->searchable(),
            Tables\Columns\TextColumn::make('plafon')
                ->label(label:'Plafon')
                ->prefix('Rp. ')
                ->numeric()
                ->searchable(),
            Tables\Columns\TextColumn::make('keterangan')
                ->label(label:'Description')
                ->searchable()
                ->toggleable(isToggledHiddenByDefault: true),
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
            'index' => Pages\ListJnsSimpanans::route('/'),
            'create' => Pages\CreateJnsSimpanan::route('/create'),
            'edit' => Pages\EditJnsSimpanan::route('/{record}/edit'),
        ];
    }
}

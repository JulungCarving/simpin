<?php

namespace App\Filament\Resources;

use App\Filament\Resources\JnsPotonganResource\Pages;
use App\Filament\Resources\JnsPotonganResource\RelationManagers;
use App\Models\JnsPotongan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class JnsPotonganResource extends Resource
{
    protected static ?string $model = JnsPotongan::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    public static function getPluralLabel(): ?string
    {
        return 'Jenis Potongan';
    }
    protected static ?int $navigationSort =3;
    public static function getSlug(): string
    {
        return 'jenis-potongan';
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
            Tables\Columns\TextColumn::make('potongan_name')
                ->label(label:'Jenis Potongan')
                ->searchable(),
            Tables\Columns\TextColumn::make('bunga')
                ->label(label:'Bunga / Tahun')
                ->searchable(),
            Tables\Columns\TextColumn::make('plafon')
                ->label(label:'Plafon')
                ->prefix('Rp. ')
                ->numeric()
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
            'index' => Pages\ListJnsPotongans::route('/'),
            'create' => Pages\CreateJnsPotongan::route('/create'),
            'edit' => Pages\EditJnsPotongan::route('/{record}/edit'),
        ];
    }
}

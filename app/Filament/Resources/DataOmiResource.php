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
        ->modifyQueryUsing(fn(Builder $query): Builder => $query
        ->whereRaw('id IN (SELECT MAX(id) FROM `data_omi` GROUP BY nag)'))
            ->columns([
                Tables\Columns\TextColumn::make('User.nag')
                    ->label(label:'NAG')
                    ->searchable(),
                Tables\Columns\TextColumn::make('User.name')
                    ->label(label:'Nama')
                    ->searchable(),
                Tables\Columns\TextColumn::make('thn')
                    ->label(label:'Tahun'),
                Tables\Columns\TextColumn::make('bln')
                    ->label(label:'Bulan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('nominal')
                    ->prefix('Rp. ')
                    ->numeric()
                    ->label(label:'Nominal')
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
            'index' => Pages\ListDataOmis::route('/'),
            'create' => Pages\CreateDataOmi::route('/create'),
            'edit' => Pages\EditDataOmi::route('/{record}/edit'),
        ];
    }
}

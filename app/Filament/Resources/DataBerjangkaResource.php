<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use App\Models\DataBerjangka;
use App\Models\User;
use Filament\Resources\Resource;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\DataBerjangkaResource\Pages;
use App\Filament\Resources\DataBerjangkaResource\RelationManagers;
use App\Filament\Resources\DataBerjangkaResource\Pages\EditDataBerjangka;
use App\Filament\Resources\DataBerjangkaResource\Pages\ListDataBerjangkas;
use App\Filament\Resources\DataBerjangkaResource\Pages\CreateDataBerjangka;

class DataBerjangkaResource extends Resource
{
    protected static ?string $model = DataBerjangka::class;

    protected static ?string $navigationIcon = 'heroicon-o-arrows-pointing-in';

    public static function getNavigationGroup() : String
    {
        return 'Simpanan';
    }
    public static function getSlug(): string
    {
        return 'data-simpanan-berjangka';
    }
    public static function getPluralLabel(): ?string
    {
        return 'Simpanan Berjangka';
    }
    protected static ?int $navigationSort =3;
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
                ->whereRaw('saldo_akhir in (select max(saldo_akhir+0) from data_simpanan_berjangka_bln group by (users_id)) '))
                ->columns([
                
                    Tables\Columns\TextColumn::make('User.nag')
                        ->label(label:'NAG')
                        ->searchable(),
                    Tables\Columns\TextColumn::make('User.name')
                        ->label(label:'Nama')
                        ->searchable(),
                    Tables\Columns\TextColumn::make('thn')
                        ->label(label:'Tahun ')
                        ->searchable(),
                    Tables\Columns\TextColumn::make('bln')
                        ->label(label:'Bulan')
                        ->searchable(),
                    Tables\Columns\TextColumn::make('saldo_masuk')
                        ->label(label:'Masuk')
                        ->prefix('Rp. ')
                        ->numeric()
                        ->searchable(),
                    Tables\Columns\TextColumn::make('saldo_keluar')
                        ->label(label:'Pengambilan')
                        ->prefix('Rp. ')
                        ->numeric()
                        ->searchable(),
                    Tables\Columns\TextColumn::make('bunga')
                        ->label(label:'Bunga')
                        ->prefix('Rp. ')
                        ->numeric()
                        ->searchable(),
                    Tables\Columns\TextColumn::make('saldo_akhir')
                        ->label(label:'Saldo')
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
            'index' => Pages\ListDataBerjangkas::route('/'),
            'create' => Pages\CreateDataBerjangka::route('/create'),
            'edit' => Pages\EditDataBerjangka::route('/{record}/edit'),
        ];
    }
}

<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\User;
use Filament\Tables;
use Filament\Forms\Form;
use App\Models\DataPokok;
use Filament\Tables\Table;
use Filament\Actions\EditAction;
use Filament\Resources\Resource;
use Illuminate\Support\Facades\DB;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;
use App\Filament\Resources\DataPokokResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\DataPokokResource\RelationManagers;
use App\Filament\Resources\DataPokokResource\Pages\EditDataPokok;
use App\Filament\Resources\DataPokokResource\Pages\ListDataPokoks;
use App\Filament\Resources\DataPokokResource\Pages\CreateDataPokok;

class DataPokokResource extends Resource
{
    protected static ?string $model = DataPokok::class;

    protected static ?string $navigationIcon = 'heroicon-o-arrows-pointing-in';

    public static function getNavigationGroup() : String
    {
        return 'SIMPANAN';
    }

    protected static ?int $navigationSort =1;

    public static function getSlug(): string
    {
        return 'data-simpanan-pokok';
    }
    public static function getPluralLabel(): ?string
    {
        return 'Simpanan Pokok';
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
        // (Table::table('data_simpanan_pokok')
        //         ->whereRaw('saldo_akhir in (select max(id) from data_simpanan_pokok)')
        //         ->groupBy('users_id')
        //         ->orderBy('id', 'desc'))
   
            ->modifyQueryUsing(fn(Builder $query): Builder => $query
            ->whereRaw('saldo_akhir in (select max(saldo_akhir+0) from data_simpanan_pokok)')
            ->orderBy('id','desc')
            ->groupBy('users_id')
            )
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
            'index' => Pages\ListDataPokoks::route('/'),
            'create' => Pages\CreateDataPokok::route('/create'),
            'edit' => Pages\EditDataPokok::route('/{record}/edit'),
        ];
    }
}

<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\User;
use Filament\Tables;
use Filament\Forms\Form;
use App\Models\DataWajib;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;
use App\Filament\Resources\DataWajibResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\DataWajibResource\RelationManagers;
use App\Filament\Resources\DataWajibResource\Pages\EditDataWajib;
use App\Filament\Resources\DataWajibResource\Pages\ListDataWajibs;
use App\Filament\Resources\DataWajibResource\Pages\CreateDataWajib;

class DataWajibResource extends Resource
{
    protected static ?string $model = DataWajib::class;

    protected static ?string $navigationIcon = 'heroicon-o-arrows-pointing-in';

    public static function getNavigationGroup() : String
    {
        return 'SIMPANAN';
    }
    protected static ?int $navigationSort =2;
    public static function getSlug(): string
    {
        return 'data-simpanan-wajib';
    }
    public static function getPluralLabel(): ?string
    {
        return 'Simpanan Wajib';
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
            ->whereRaw('id IN (SELECT MAX(id) FROM `data_simpanan_wajib` GROUP BY nag)'))
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
            'index' => Pages\ListDataWajibs::route('/'),
            'create' => Pages\CreateDataWajib::route('/create'),
            'edit' => Pages\EditDataWajib::route('/{record}/edit'),
        ];
    }
}

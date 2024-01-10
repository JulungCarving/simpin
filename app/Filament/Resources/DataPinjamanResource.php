<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Pages\ListDataPinjaman;
use App\Models\DataPinjaman;
use App\Models\JnsPinjaman;
use Filament\Resources\Resource;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\DataPinjamanResource\Pages;
use App\Filament\Resources\DataPinjamanResource\RelationManagers;

class DataPinjamanResource extends Resource
{
    protected static ?string $model = DataPinjaman::class;
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    public static function getPluralLabel(): ?string
    {return 'Data Pinjaman';}
    public static function getNavigationGroup() : String
    {return 'KEWAJIBAN';}
    public static function getSlug(): string
    {return 'data-pinjaman';}
    // protected static ?int $navigationSort =1;

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
                Tables\Columns\TextColumn::make('User.nag')
                    ->label(label:'NAG')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('User.name')
                    ->label(label:'Nama')
                    ->searchable(),
                Tables\Columns\TextColumn::make('jnspinjaman.pinjaman_name')
                    ->alignCenter()
                    ->label(label:'Jenis Pinjaman')
                    ->searchable(),
                Tables\Columns\TextColumn::make('jnspinjaman.bunga_pertahun')
                    ->alignCenter()
                    ->label(label:'Bunga/Tahun')
                    ->searchable(),
                Tables\Columns\TextColumn::make('disetujui')
                    ->alignCenter()
                    ->prefix('Rp. ')
                    ->numeric()
                    ->label(label:'Disetujui')
                    ->searchable(),
                Tables\Columns\TextColumn::make('angsuran')
                    ->alignCenter()
                    ->label(label:'Angsuran')
                    ->searchable(),
                Tables\Columns\TextColumn::make('mulai')
                    ->alignCenter()
                    ->label(label:'Mulai')
                    ->searchable(),
                Tables\Columns\TextColumn::make('selesai')
                    ->alignCenter()
                    ->label(label:'Selesai')
                    ->searchable(),
                Tables\Columns\IconColumn::make('is_lunas')
                    ->alignCenter()
                    ->label(label:'Lunas')
                    ->boolean(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
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
            'index' => Pages\ListDataPinjaman::route('/'),
            'create' => Pages\CreateDataPinjaman::route('/create'),
            'edit' => Pages\EditDataPinjaman::route('/{record}/edit'),
        ];
    }
}

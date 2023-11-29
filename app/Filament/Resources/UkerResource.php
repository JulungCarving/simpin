<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Uker;
use App\Models\User;
use Filament\Tables;
use App\Models\UkerKat;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Tables\Columns\TextColumn;
use Filament\Resources\Resource;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\UkerResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\UkerResource\RelationManagers;

class UkerResource extends Resource
{
    protected static ?string $model = Uker::class;

    protected static ?string $navigationIcon = 'heroicon-o-map-pin';
    protected static ?string $navigationLabel = 'Unit Kerja';
    protected static ?int $navigationSort =4;
    public static function getNavigationGroup() : String
    {
        return 'Master Data';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('uker_kats_id')
                    ->label(label:'Category')
                    ->relationship('ukerkat', 'uker_kategori'),
                Forms\Components\TextInput::make('unit_kerja')
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('kode_unit_kerja')
                    ->label('Kode Unit Kerja')
                    ->searchable(),
                Tables\Columns\TextColumn::make('ukerkat.uker_kategori')
                    ->label('Category')
                    ->searchable(),
                Tables\Columns\TextColumn::make('unit_kerja')
                    ->label('Unit Kerja')
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
            'index' => Pages\ListUkers::route('/'),
            'create' => Pages\CreateUker::route('/create'),
            'edit' => Pages\EditUker::route('/{record}/edit'),
        ];
    }    
}

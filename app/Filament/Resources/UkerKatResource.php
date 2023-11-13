<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UkerKatResource\Pages;
use App\Filament\Resources\UkerKatResource\RelationManagers;
use App\Models\UkerKat;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class UkerKatResource extends Resource
{
    protected static ?string $model = UkerKat::class;

    protected static ?string $navigationIcon = 'heroicon-o-tag';
    protected static ?string $navigationLabel = 'Kategori Unit Kerja';

    public static function getNavigationGroup() : String
    {
        return 'Master Data';
    }


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('uker_kategori')
                    ->label('Kategori Unit Kerja')
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('uker_kategori')
                ->label('Kategori Unit Kerja')
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
            'index' => Pages\ListUkerKats::route('/'),
            'create' => Pages\CreateUkerKat::route('/create'),
            'edit' => Pages\EditUkerKat::route('/{record}/edit'),
        ];
    }    
}

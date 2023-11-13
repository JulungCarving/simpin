<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserKatResource\Pages;
use App\Filament\Resources\UserKatResource\RelationManagers;
use App\Models\UserKat;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class UserKatResource extends Resource
{
    protected static ?string $model = UserKat::class;

    protected static ?string $navigationIcon = 'heroicon-o-tag';
    protected static ?string $navigationLabel = 'Kategori User';
    
    public static function getNavigationGroup() : String
    {
        return 'Master Data';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('user_kategori')
                    ->label(label:'Kategori User')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('user_kategori')
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
            'index' => Pages\ListUserKats::route('/'),
            'create' => Pages\CreateUserKat::route('/create'),
            'edit' => Pages\EditUserKat::route('/{record}/edit'),
        ];
    }    
}

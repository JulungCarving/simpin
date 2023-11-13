<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DataPotonganResource\Pages;
use App\Filament\Resources\DataPotonganResource\RelationManagers;
use App\Models\DataPotongan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DataPotonganResource extends Resource
{
    protected static ?string $model = DataPotongan::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationLabel = 'Potongan';

    public static function getNavigationGroup() : String
    {
        return 'Transaction';
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
                //
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
            'index' => Pages\ListDataPotongans::route('/'),
            'create' => Pages\CreateDataPotongan::route('/create'),
            'edit' => Pages\EditDataPotongan::route('/{record}/edit'),
        ];
    }    
}

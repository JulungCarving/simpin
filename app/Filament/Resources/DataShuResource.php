<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\User;
use Filament\Tables;
use App\Models\DataShu;
use Filament\Forms\Get;
use Filament\Forms\Set;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\Select;
use Illuminate\Database\Eloquent\Model;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use Filament\Infolists\Components\TextEntry;
use App\Filament\Resources\DataShuResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\DataShuResource\RelationManagers;

class DataShuResource extends Resource
{
    protected static ?string $model = DataShu::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Sisa Hasil Usaha';

    public static function getNavigationGroup() : String
    {
        return 'Transaction';
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('users_id')
                ->live()
                // untuk memodifikasi pencarian select
                ->relationship(
                    name: 'user',
                    modifyQueryUsing: fn (Builder $query) => $query->orderBy('nag')->orderBy('name'),
                )
                ->getOptionLabelFromRecordUsing(fn (Model $record) => "{$record->nag} - {$record->name}")
                ->afterStateUpdated(function(Get $get , Set $set, ?string $state){
                    $data = DataShu::whereUsersId($state)->orderBy('thn','desc')->first();
                    $set('saldo_keluar',0);
                    $set('saldo_akhir',number_format($data->saldo_akhir,0,',','.'));
                    $set('saldo',number_format($data->saldo_akhir,0,',','.'));
                })
                ->searchable(['nag', 'name'])
                ->required()
                ->searchable() // digunakan agar bisa mencari data / mengetik data
                ->preload() // digunakan untuk menampilakan sebagian data
                ->columnSpanFull(), // digunakan agar tampilannya full
                TextInput::make('saldo_keluar')->live()->afterStateUpdated(function (Get $get, Set $set, ?string $old, ?string $state) {
                    $data = (intval(str_replace('.','',$get('saldo'))) - $state);
                    $set('saldo_akhir', number_format($data,0,',','.'));
                })->default(0),
                TextInput::make('saldo_akhir')->disabled()->default(0),
                TextInput::make('saldo')->hidden(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->modifyQueryUsing(fn(Builder $query): Builder => $query->orderBy('thn','desc')->distinct('users_id'))
            // Untuk menggroupkan row atau isi table
            // ->groups([
            //     'User.name'
            // ])
            ->columns([
                Tables\Columns\TextColumn::make('User.nag')
                    ->label(label:'NAG')
                    ->searchable(),
                Tables\Columns\TextColumn::make('User.name')
                    ->label(label:'Nama')
                    ->searchable(),
                Tables\Columns\TextColumn::make('thn')
                    ->label(label:'Tahun')
                    ->searchable(),
                Tables\Columns\TextColumn::make('bln')
                    ->label(label:'Bulan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('saldo_akhir')
                    ->money('IDR')
                    ->label(label:'Saldo')
                    ->searchable(),
            ])
           
            ->filters([
                // Filter::make('thn')
                // ->query(fn (Builder $query): Builder => $query->where('thn', true))
                // ->label('Periode Tahun'),

                // SelectFilter::make('status')
                // ->options([
                //     'draft' => 'Draft',
                //     'reviewing' => 'Reviewing',
                //     'published' => 'Published',
                // ]),
                ])
                
            ->actions([
                Tables\Actions\Action::make('history')->label('History Pengambilan')->color('info')->icon('heroicon-s-clock'),
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
            'index' => Pages\ListDataShus::route('/'),
            'create' => Pages\CreateDataShu::route('/create'),
            'edit' => Pages\EditDataShu::route('/{record}/edit'),
        ];
    }    
}

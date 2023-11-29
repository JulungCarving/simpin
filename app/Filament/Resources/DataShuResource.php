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
use Filament\Tables\Grouping\Group;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Model;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use Filament\Infolists\Components\TextEntry;
use App\Filament\Resources\DataShuResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\DataShuResource\RelationManagers;
use function Laravel\Prompts\select;
use function Laravel\Prompts\table;

class DataShuResource extends Resource
{
    protected static ?string $model = DataShu::class;
    protected static ?string $navigationIcon = 'heroicon-o-arrows-pointing-in';
    public static function getPluralLabel(): ?string
    {
        return 'Sisa Hasil Usaha';
    }
    public static function getNavigationGroup() : String
    {
        return 'SIMPANAN';
    }
    protected static ?int $navigationSort =5;
    public static function getSlug(): string
    {
        return 'data-sisa-hasil-usaha';
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
                    $data = DataShu::whereUsersId($state)->orderBy('thn_input','desc')->first();
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
         ->modifyQueryUsing(fn(Builder $query): Builder => $query
         ->whereRaw('saldo_akhir in (select max(saldo_akhir+0) from data_shu group by (users_id)) '))
            
            ->columns([
                Tables\Columns\TextColumn::make('User.nag')
                    ->label(label:'NAG')
                    ->searchable(),
                Tables\Columns\TextColumn::make('User.name')
                    ->label(label:'Nama')
                    ->searchable(),
                Tables\Columns\TextColumn::make('thn_buku')
                    ->label(label:'Tahun Buku'),
                Tables\Columns\TextColumn::make('thn_input')
                    ->label(label:'Tahun Masuk')
                    ->searchable(),
                Tables\Columns\TextColumn::make('bln_input')
                    ->label(label:'Bulan Masuk')
                    ->searchable(),
                Tables\Columns\TextColumn::make('saldo_akhir')
                    ->prefix('Rp. ')
                    ->numeric()
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

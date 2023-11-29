<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Bank;
use App\Models\Uker;
use App\Models\User;
use Filament\Tables;
use App\Models\UserKat;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Tables\Columns\Select;
use Filament\Tables\Filters\Filter;
use Forms\Components\Toggle\Toggle;
use Filament\Forms\Components\Radio;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Enums\FiltersLayout;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\TimePicker;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use Filament\Forms\Components\Placeholder;
use Maatwebsite\Excel\Excel as ExcelExcel;
use Filament\Forms\Components\DateTimePicker;
use App\Filament\Resources\UserResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\UkerResource\Pages\ListUkers;
// use Illuminate\Support\Carbon;
// use Carbon\Carbon;



class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $navigationIcon = 'heroicon-o-users';
    protected static ?int $navigationSort =6;
    public static function getNavigationGroup() : String
    {
        return 'Master Data';
    }
    
    public static function form(Form $form): Form
    {
        
        return $form
        
            ->schema([
                Card::make()->schema([
                    Forms\Components\TextInput::make('nag')
                        ->label(label:'Number of Member (NAG)')
                        ->numeric()
                        ->maxLength(255),
                    Forms\Components\TextInput::make('name')
                        ->label(label:'Full Name')
                        ->maxLength(255),
                    Forms\Components\DatePicker::make('tgl_joint')
                        ->label(label:'Joint Date'),
                    Forms\Components\Select::make('ukers_id')
                        ->label(label:'Work Unit')
                        ->relationship('uker', 'unit_kerja')
                        ->options(Uker::all()->pluck('unit_kerja', 'id'))
                        ->searchable()
                        ->native(false),
                ])->columnSpan(1),

                Card::make()
                    ->schema([
                        Forms\Components\TextInput::make('email')
                            ->email()
                            ->maxLength(255),
                        Forms\Components\TextInput::make('password')
                            ->password()
                            ->maxLength(255),
                        Forms\Components\TextInput::make('phone_number')
                            ->label(label:'Phone Number')
                            ->maxLength(255),
                        Forms\Components\TextInput::make('nip')
                            ->label(label:'Employee ID Number (NIP)')
                            ->maxLength(255),
                        Forms\Components\Select::make('user_kats_id')
                            ->label(label:'Member Category')
                            ->relationship('userkat', 'user_kategori'),
                ])->columnSpan(1),

                Card::make()->schema([
                    Forms\Components\Select::make('bank_id')
                        ->label(label:'Bank')
                        ->relationship('bank', 'bank_name'),
                    Forms\Components\TextInput::make('narek')
                        ->label(label:'Nama Pemilik Rekening')
                        ->maxLength(255),
                    Forms\Components\TextInput::make('norek')
                        ->label(label:'Nomor Rekening')
                        ->numeric()
                        ->maxLength(255),
                    Forms\Components\Toggle::make('is_active')
                        ->label(label:'Member Is Aktif')
                        ->onColor('success')
                        ->offColor('danger'),
                    Forms\Components\Toggle::make('is_admin')
                        ->label(label:'Member As Admin')
                        ->onColor('success')
                        ->offColor('danger'),
                ])->columnSpan(1),
                
            ])->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nag')
                    ->label(label:'NAG')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('name')
                    ->label(label:'Nama')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('phone_number')
                    ->url('https://web.whatsapp.com/')
                    ->label(label:'Nomor HP')
                    ->searchable(),
                Tables\Columns\TextColumn::make('Uker.unit_kerja')
                    ->label(label:'Unit Kerja')
                    ->searchable(),
                Tables\Columns\TextColumn::make('userkat.user_kategori')
                    ->label(label:'Kategori')
                    ->searchable(),
                Tables\Columns\TextColumn::make('nip')
                    ->label(label:'NIP')
                    ->searchable(),

                
                Tables\Columns\TextColumn::make('tgl_joint')
                    ->label(label:'Tanggal Gabung')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('Bank.bank_name')
                    ->label(label:'Bank')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('narek')
                    ->label(label:'Nama Pemilik Rekening')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('norek')
                    ->label(label:'Nomor Rekening')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\IconColumn::make('is_active')
                    ->label(label:'Is Active')
                    ->boolean(),
                Tables\Columns\IconColumn::make('is_admin')
                    ->label(label:'As Admin')
                    ->boolean(),
                Tables\Columns\TextColumn::make('created_at')
                    ->since()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->date()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])->defaultSort('nag','desc')
            ->filters([
                Filter::make('is_active')
                    ->query(fn (Builder $query): Builder => $query->where('is_active',true))
                    ->label(label:'Active'),
                Filter::make('as_admin')
                    ->query(fn (Builder $query): Builder => $query->where('is_admin',true))
                    ->label(label:'Admin'),
                SelectFilter::make('id_unit_kerja')
                    ->relationship('uker', 'unit_kerja')
                    ->label(label:'Unit Kerja'),
                //
            ],layout: FiltersLayout::AboveContentCollapsible)
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                // Tables\Actions\ViewAction::make(),
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
            'index' => Pages\ListUsers::route('/'),
            // 'view' => Pages\ViewUser::route('/{record}'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }    
}

<?php

namespace App\Filament\Pages;

use App\Models\DataPokok;
use App\Models\DataWajib;
use DateTime;
use Filament\Forms\Form;
use Filament\Pages\Page;
use Filament\Tables\Table;
use Filament\Forms\Contracts\HasForms;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
// use Filament\Forms\Components\Tabs;
use Filament\Resources\Concerns\HasTabs;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Illuminate\Contracts\Database\Eloquent\Builder;

class DataSimpanan extends Page implements HasForms , HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;
    use HasTabs;
    // use Tabs;
    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static string $view = 'filament.pages.data-simpanan';
    public static function getNavigationGroup(): ?string
    {
        return 'SIMPANAN';
    }
    public ?array $data = [];
    public $nag;
    public $tab1;
    public $table2;
    
    public function mount(): void
    {
        $this->form->fill();
    }

    public function form(Form $form):Form
    {
        return $form
            ->schema([
                TextInput::make('nag')
                    ->label('NAG'),
            ]);
    }

    public function table(Table $tab1):Table
    {
        return $tab1
            ->query(DataPokok::query()->where('nag',$this->nag))
            ->queryStringIdentifier('datapokok')
            ->deferLoading()
            ->columns([
                TextColumn::make('User.nag')
                    ->label(label:'NAG'),
                TextColumn::make('User.name')
                    ->label(label:'Nama'),
                TextColumn::make('thn')
                    ->label(label:'Tahun '),
                TextColumn::make('bln')
                    ->label(label:'Bulan'),
                TextColumn::make('saldo_masuk')
                    ->label(label:'Masuk')
                    ->prefix('Rp. ')
                    ->numeric(),
                TextColumn::make('saldo_keluar')
                    ->label(label:'Pengambilan')
                    ->prefix('Rp. ')
                    ->numeric(),
                TextColumn::make('saldo_akhir')
                    ->label(label:'Saldo')
                    ->prefix('Rp. ')
                    ->numeric(),
            ]);
    }

    public function submit()
    {
       $this->nag = $this->form->getState()['nag'];
       $this->resetTable();
       return $this->nag;
    }
    
}

<?php

namespace App\Livewire;

use Filament\Tables;
use Livewire\Component;
use Filament\Tables\Table;
use Illuminate\Contracts\View\View;
use Filament\Forms\Contracts\HasForms;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Contracts\HasTable;
use Illuminate\Database\Eloquent\Builder;
use App\Models\DataWajib as modelDataWajib;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Tables\Concerns\InteractsWithTable;

class DataWajib extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public $nag;

    public function mount($nag)
    { 
        $this->nag = $nag;
    }

    public function table(Table $table): Table
    {
        return $table
            ->query(modelDataWajib::query()->where('nag',$this->nag))
            ->columns([
                TextColumn::make('User.nag')
                    ->label(label: 'NAG')
                    ->searchable(),
                TextColumn::make('User.name')
                    ->label(label: 'Nama')
                    ->searchable(),
                TextColumn::make('thn')
                    ->label(label: 'Tahun ')
                    ->searchable(),
                TextColumn::make('bln')
                    ->label(label: 'Bulan')
                    ->searchable(),
                TextColumn::make('saldo_masuk')
                    ->label(label: 'Masuk')
                    ->prefix('Rp. ')
                    ->numeric()
                    ->searchable(),
                TextColumn::make('saldo_keluar')
                    ->label(label: 'Pengambilan')
                    ->prefix('Rp. ')
                    ->numeric()
                    ->searchable(),
                TextColumn::make('saldo_akhir')
                    ->label(label: 'Saldo')
                    ->prefix('Rp. ')
                    ->numeric()
                    ->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                //
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    //
                ]),
            ]);
    }

    public function render(): View
    {
        return view('livewire.data-wajib');
    }
}

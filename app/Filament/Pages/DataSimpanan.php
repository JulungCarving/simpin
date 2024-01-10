<?php

namespace App\Filament\Pages;

use DateTime;
use Filament\Forms\Form;
use Filament\Pages\Page;
use Filament\Tables\Table;
use Filament\Forms\Contracts\HasForms;
use Filament\Forms\Components\TextInput;
use Filament\Resources\Concerns\HasTabs;
// use Filament\Forms\Components\Tabs;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Concerns\InteractsWithForms;

class DataSimpanan extends Page implements HasForms
{
    use InteractsWithForms;
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
    public $thn;
    public $bln;
    
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
                TextInput::make('thn')
                    ->label('Tahun'),
                TextInput::make('bln')
                    ->label('Bulan')
            ]);
    }

    
    
}

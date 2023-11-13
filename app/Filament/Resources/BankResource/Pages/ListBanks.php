<?php

namespace App\Filament\Resources\BankResource\Pages;

use App\Models\Bank;
use Filament\Actions;
use App\Imports\ImportBanks;
use Maatwebsite\Excel\Facades\Excel;
use App\Filament\Resources\BankResource;
use Filament\Forms\Components\FileUpload;
use Filament\Resources\Pages\ListRecords;
use Filament\Tables\Actions\Action;
use Illuminate\View\View;

class ListBanks extends ListRecords
{
    protected static string $resource = BankResource::class;
    public $file = '';

    public function save()
    {
        if ($this->file != '') {
            Excel::import(new ImportBanks, $this->file);
        }
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
            Actions\Action::make('uploadExcel')
                ->action(fn()=> $this->save())
                // ->form([
                //     FileUpload::make('file')
                //         ->label('upload file')
                //         ->required(),
                // ])
                // ->action(function (array $data): void {
                //     $this->file = $data['file'];
                //     $this->save();
                // })
                ->modalContent(fn () => view(
                   'filament.custom.upload-file'
                ))
        ];
    }

    // public function getHeader(): ?ViewView
    // {
    //     $data = Actions\CreateAction::make();
    //     return view('filament.custom.upload-file', compact('data'));
    // }
}

<x-filament-panels::page>

    <x-filament::section collapsible>
        <x-slot name="heading">
            Pencarian Data
        </x-slot>
        <form wire:submit="submit">
            {{ $this->form }}

            <x-filament::button size="lg" type="submit" class="mt-3 w-full">
                Cari
                <div wire:loading>
                <x-filament::loading-indicator class="h-5 w-5" />
                </div>
            </x-filament::button>
        </form>
    </x-filament::section>

    <x-filament::section>
        <x-slot name="heading">
            Hasil Pencarian Data Simpanan
        </x-slot>
        <div x-data="{ tab: 'tab1' }">
            <x-filament::tabs label="Hak Anggota">
                <x-filament::tabs.item @click="tab = 'tab1'" :alpine-active="'tab === \'tab1\''">
                    1. Pokok
                </x-filament::tabs.item>
                <x-filament::tabs.item @click="tab = 'tab2'" :alpine-active="'tab === \'tab2\''">
                    2. Wajib
                </x-filament::tabs.item>
                <x-filament::tabs.item @click="tab = 'tab3'" :alpine-active="'tab === \'tab3\''">
                    3. Berjangka (bulan)
                </x-filament::tabs.item>
                <x-filament::tabs.item @click="tab = 'tab4'" :alpine-active="'tab === \'tab4\''">
                    4. Berjangka (tahun)
                </x-filament::tabs.item>
                <x-filament::tabs.item @click="tab = 'tab5'" :alpine-active="'tab === \'tab5\''">
                    5. Sisa Hasil Usaha
                </x-filament::tabs.item>

            </x-filament::tabs>

            <div>
                <div x-show="tab === 'tab1'">
                    <div class="mt-3">
                        {{ $this->table }}
                    </div>
                </div>
                <div x-show="tab === 'tab2'">
                    <div class="mt-3">
                    @livewire('data-wajib',$this->form->getState())
                    </div>
                </div>
                <div x-show="tab === 'tab3'">
                    Data 3...
                </div>
                <div x-show="tab === 'tab4'">
                    Data 4...
                </div>
                <div x-show="tab === 'tab5'">
                    Data 5...
                </div>
            </div>
        </div>
    </x-filament::section>

</x-filament-panels::page>
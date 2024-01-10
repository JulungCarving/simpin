<?php

namespace App\Models;

use App\Models\DataPinjaman;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;

class JnsPinjaman extends Model
{
    use HasFactory;
    protected $table = 'jenis_pinjaman';

    public function DataPinjaman(){
        return $this->hasMany(DataPinjaman::class);
    }

}

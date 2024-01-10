<?php

namespace App\Models;

use App\Models\User;
use App\Models\JnsPinjaman;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;

class DataPinjaman extends Model
{
    use HasFactory;
    protected $table = 'data_pinjaman';

    public function User()
        {
        return $this->belongsTo(User::class,'nag','nag');
        }

    public function JnsPinjaman():BelongsTo
        {
        return $this->belongsTo(JnsPinjaman::class,'jenis_pinjaman_id');
        }

    public function DataPinjamanDetail():HasMany
        {
        return $this->hasMany(DataPinjamanDetail::class);
        }
}

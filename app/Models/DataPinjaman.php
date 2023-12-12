<?php

namespace App\Models;

use App\Models\JnsPinjaman;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataPinjaman extends Model
{
    use HasFactory;
    protected $table = 'data_pinjaman';

    public function User()
        {
        return $this->belongsTo(User::class,'nag','nag');
        }

    // public function JnsPinjaman():BelongsTo
    //     {
    //     return $this->belongsTo(JnsPinjaman::class,'jenis_pinjaman_id');
    //     }
    public function JnsPinjaman()
        {
        return $this->belongsTo(JnsPinjaman::class,'jenis_pinjaman_id');
        }
}

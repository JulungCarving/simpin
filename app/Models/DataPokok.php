<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataPokok extends Model
{
    use HasFactory;
    protected $table = 'data_simpanan_pokok';

    public function User(){
        return $this->belongsTo(User::class,'nag','nag');
        }
}

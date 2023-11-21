<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataWajib extends Model
{
    use HasFactory;
    protected $table = 'data_simpanan_wajib';

    public function User(){
        return $this->belongsTo(User::class,'users_id');
        }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataBerjangka extends Model
{
    use HasFactory;
    protected $table = 'data_simpanan_berjangka_bln';
    public function User(){
        return $this->belongsTo(User::class,'nag','nag');
        }
}

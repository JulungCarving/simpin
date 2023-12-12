<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Datashu extends Model
{
    use HasFactory;
    protected $table = 'data_shu';
    
    // jika tidak ada created at updated at
    // public $timestamps = false;
    // public $incrementing = false;

    public function User()
    {
        return $this->belongsTo(User::class,'nag','nag');
    }
}

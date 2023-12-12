<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataOmi extends Model
{
    use HasFactory;
    protected $table = 'data_omi';

    public function User(){
        return $this->belongsTo(User::class,'nag','nag');
        }
}

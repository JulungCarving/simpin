<?php

namespace App\Models;

use App\Models\DataPokok;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class DataSimpanan extends Model
{
    use HasFactory;
    protected $table = 'data_simpanan';

    // public function DataPokok(){
    //     return $this->belongsTo(DataPokok::class,'nag','nag');
    //     }
    
    public function User(){
        return $this->belongsTo(User::class,'nag','nag');
        }
}

<?php

namespace App\Models;

use App\Models\Uker;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class UkerKat extends Model
{
    
    use HasFactory;
    public function uker(){
        return $this->hasMany(Uker::class);
    }
}

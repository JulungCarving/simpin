<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Uker extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function users(){
        return $this->hasMany(User::class);
    }
    
    public $timestamps = false;
}



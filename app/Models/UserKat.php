<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class UserKat extends Model
{
    use HasFactory;
    public function users(){
        return $this->hasMany(User::class);
    }
    protected $guarded = [];
    public $timestamps = false;
}

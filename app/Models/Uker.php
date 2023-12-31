<?php

namespace App\Models;

use App\Models\User;
use App\Models\UkerKat;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Uker extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function users():HasMany
    {
        return $this->hasMany(User::class);
    }

    public function UkerKat():BelongsTo
    {
        return $this->belongsTo(UkerKat::class,'uker_kats_id');
    }
    
    public $timestamps = false;
}



<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Carbon\Carbon;
use App\Models\Bank;
use App\Models\Uker;
use DateTimeInterface;
use App\Models\UserKat;
use Illuminate\Support\Str;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;


class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    

    // protected function createdAt(): Attribute
    // {
    //     return Attribute::make(
    //         get: fn ($value, $attributes) => Carbon::create($value)->format('Y/m/d')
    //     );
    // }
    

    //  protected $fillable = [
    //     'ukers_id',
    //     'bank_id',
    //     'user_kats_id',
    //     'name',
    //     'email',
    //     // email_verified_at
    //     // password
    //     // remember_token
    //     // created_at
    //     // updated_at
    //     'nip',
    //     'nag',
    //     'tgl_joint',
    //     'phone_number',
    //     'norek',
    //     'is_active',
    //     'is_admin',
    //  ];
    
     protected $guarded = []; 

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

 

//     /**
//  * Prepare a date for array / JSON serialization.
//  */
// protected function serializeDate(DateTimeInterface $date): string
// {
//     return $date->format('Y-m-d');
// }

    /**
     * The attributes that should be cast.
     *
      * @var array<string, string>
      */
      
//     protected $dateFormat = 'U';
    
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function Uker(){
        return $this->belongsTo(Uker::class,'ukers_id');
        }

    public function UserKat(){
        return $this->belongsTo(UserKat::class,'user_kats_id');
        }

    public function Bank(){
        return $this->belongsTo(Bank::class,'bank_id');
        }
}

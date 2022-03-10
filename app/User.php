<?php

namespace App;

use App\Models\Computadora;
use App\Models\Reporte;
use App\Models\Sello;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'admin', 'dpto'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function reportes(){
        return $this->hasMany(Reporte::class);
    }

    public function computadoras(){
        return $this->hasMany(Computadora::class);
    }

    public function sellos(){
        return $this->hasMany(Sello::class);
    }
}

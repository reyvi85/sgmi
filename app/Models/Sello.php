<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Sello extends Model
{
   protected $fillable = ['number', 'computadora_id', 'user_id'];

   public function computadora(){
       return $this->belongsTo(Computadora::class);
   }

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function setNumberAttribute($value)
    {
        $this->attributes['number'] = strtoupper($value);
    }

}

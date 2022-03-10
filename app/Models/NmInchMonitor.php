<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmInchMonitor extends Model
{
    protected $fillable =['name'];

    public function displays(){
        return $this->hasMany(Display::class);
    }

}

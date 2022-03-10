<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmFabricante extends Model
{
    protected $fillable =['name'];

    public function nm_model_printer(){
        return $this->hasMany(NmModelPrinter::class);
    }

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CintaTonner extends Model
{
    protected $fillable = ['name'];

    public function nm_model_printers(){
        return $this->belongsToMany(NmModelPrinter::class);
    }

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }

}

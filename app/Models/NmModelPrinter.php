<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmModelPrinter extends Model
{
    protected $fillable = ['name', 'nm_printer_id', 'nm_fabricante_id'];

    public function nm_fabricante(){
        return $this->belongsTo(NmFabricante::class);
    }

    public function nm_printer(){
        return $this->belongsTo(NmPrinter::class);
    }

    public function cinta_tonners(){
        return $this->belongsToMany(CintaTonner::class);
    }

    /** M U T A D O R E S */
    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }
}

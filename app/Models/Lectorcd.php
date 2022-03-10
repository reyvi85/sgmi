<?php

namespace App\Models;

use App\Models\Computadora;
use App\Models\NmFabricante;
use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

class Lectorcd extends Model
{
   // use SoftDeletes;
    protected $fillable = [
        'sn',
        'model',
        'nm_fabricante_id',
        'computadora_id',
        'state'
        ];

    public function nm_fabricante(){
        return $this->belongsTo(NmFabricante::class);
    }

    public function computadora(){
        return $this->belongsTo(Computadora::class);
    }
    /** M U T A D O R E S */
    public function setSnAttribute($value)
    {
        $this->attributes['sn'] = strtoupper($value);
    }

    public function setModelAttribute($value)
    {
        $this->attributes['model'] = strtoupper($value);
    }
    /** S C O P E */
    public function ScopeComputadora($query, $pc)
    {
        return $query->where('computadora_id', $pc);
    }

    public function ScopeStatus($query, $status)
    {
        return $query->where('state', $status);
    }
}

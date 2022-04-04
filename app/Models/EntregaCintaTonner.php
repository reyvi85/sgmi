<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EntregaCintaTonner extends Model
{
    protected $fillable = [
        'cantidad',
        'series',
        'nota',
        'nm_ueb_id',
        'cinta_tonner_id'
    ];

    public function nm_ueb(){
        return $this->belongsTo(NmUeb::class);
    }

    public function cintaTonner(){
        return $this->belongsTo(CintaTonner::class);
    }
}

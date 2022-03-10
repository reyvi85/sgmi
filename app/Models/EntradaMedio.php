<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EntradaMedio extends Model
{
   protected $fillable = [
       'medio',
       'nm_ueb_id',
       'nm_departamento_id',
       'num_factura',
       'descripcion'
   ];

   public function nm_departamento(){
       return $this->belongsTo(NmDepartamento::class);
   }

   public function nm_ueb(){
       return $this->belongsTo(NmUeb::class);
   }
}

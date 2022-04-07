<?php
/**
 * Created by PhpStorm.
 * User: reyvi
 * Date: 15/2/2021
 * Time: 11:46
 */

namespace App\Repository;


use App\Models\EntradaMedio;
use App\Models\EntregaBateria;
use App\Models\EntregaCintaTonner;

class SgmiRepository
{

    public function getMedios(){
        return EntradaMedio::with('nm_ueb', 'nm_departamento')
            ->orderBy('id', 'DESC')
            ->paginate();
    }

    public function getEntregaCintasTonners(){
        return EntregaCintaTonner::with('nm_ueb', 'cintaTonner')
            ->orderBy('id', 'DESC')
            ->paginate();
    }

    public function getEntregaBaterias(){
        return EntregaBateria::with('nm_ueb')
            ->orderBy('id', 'DESC')
            ->paginate();
    }
}

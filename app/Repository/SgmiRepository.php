<?php
/**
 * Created by PhpStorm.
 * User: reyvi
 * Date: 15/2/2021
 * Time: 11:46
 */

namespace App\Repository;


use App\Models\EntradaMedio;

class SgmiRepository
{

    public function getMedios(){
        return EntradaMedio::with('nm_ueb', 'nm_departamento')
            ->orderBy('id', 'DESC')
            ->paginate();
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: reyvi
 * Date: 12/12/2019
 * Time: 09:12
 */

namespace App\Repository;
use App\Models\NmFabricante;


class Fabricantes
{
    protected $model;

    public function __construct(NmFabricante $fabricantes)
    {
        $this->model = $fabricantes;
    }

    public function getFabricantes(){
       return $this->model::orderBy('name','ASC')->paginate();
    }

    public function fabricanteStore($requets)
    {

    }
}
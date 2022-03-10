<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Lectorcd;
use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use Illuminate\Http\Request;
use App\Repository\NomencladoresRepository;
use App\Http\Requests\LectorCDStoreRequest;
//use App\Http\Requests\LectorCDStoreRequest;

class LectorcdController extends Controller
{

    protected $nomencladores;
    protected $componentes;
    protected $estadistica;

    /**
     * LectorcdController constructor.
     * @param $repository
     */
    public function __construct(NomencladoresRepository $nomencladoresRepository,
                                ComponentesRepository $componentesRepository,
                                EstadisticasRepository $estadisticasRepository)
    {
        $this->nomencladores = $nomencladoresRepository;
        $this->componentes = $componentesRepository;
        $this->estadistica = $estadisticasRepository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stastFabricante = $this->estadistica->getCDFabricante();
       return view('list.listLectorcd', compact('stastFabricante'));
    }

    public function lectorPC(Computadora $computadora){
        $fabricantes = $this->nomencladores->getFabricantes();
        $lista = $this->componentes->getLectorCDpc($computadora->id);
        return view('componentes.lectorCD', compact('computadora', 'fabricantes', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(LectorCDStoreRequest $request, Computadora $computadora)
    {
      $computadora->lectorCD()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
      return redirect()->route('cd.pc', $computadora->id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Lectorcd  $lectorcd
     * @return \Illuminate\Http\Response
     */
    public function update(LectorCDStoreRequest $request, Lectorcd $lectorcd)
    {
        $lectorcd->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
       return redirect()->route('cd.pc', $lectorcd->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Lectorcd  $lectorcd
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lectorcd $lectorcd)
    {
      $lectorcd->delete();
      flash('Se eleminó el lector seleccionado')->success()->important();
      return redirect()->route('cd.pc', $lectorcd->computadora_id);
    }
}

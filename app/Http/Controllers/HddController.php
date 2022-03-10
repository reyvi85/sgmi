<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Hdd;
//use Illuminate\Http\Request;
use App\Http\Requests\HddStoreRequest;

use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class HddController extends Controller
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
        $stastFabricante = $this->estadistica->getHddFabricante();
        $stastCapacidad = $this->estadistica->getHddCapacidad();
        return view('list.listHdd', compact('stastFabricante', 'stastCapacidad'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function hddPC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $capacidad = $this->nomencladores->getCapacidadHDD();
        $lista = $this->componentes->getHddPc($computadora->id);
        return view('componentes.hdd', compact('computadora', 'fabricantes','capacidad', 'lista'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(HddStoreRequest $request, Computadora $computadora)
    {
        $computadora->hdds()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('hdd.pc', $computadora->id);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Hdd  $hdd
     * @return \Illuminate\Http\Response
     */
    public function update(HddStoreRequest $request, Hdd $hdd)
    {
       $hdd->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('hdd.pc', $hdd->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Hdd  $hdd
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hdd $hdd)
    {
      $hdd->delete();
      flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
      return redirect()->route('hdd.pc', $hdd->computadora_id);
    }
}

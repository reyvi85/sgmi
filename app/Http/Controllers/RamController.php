<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Ram;
//use Illuminate\Http\Request;
use App\Http\Requests\RamRequest;
use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class RamController extends Controller
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
        $stastFabricante = $this->estadistica->getRAMFabricante();
        $stastVelocidad = $this->estadistica->getRAMVelocidad();
        $stastTipo = $this->estadistica->getRAMTipo();
        return view('list.listRam', compact('stastFabricante', 'stastTipo', 'stastVelocidad'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function ramPc(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $tipoRam = $this->nomencladores->getTipoRam();
        $velocidadRam = $this->nomencladores->getVelocidadRam();
        $lista = $this->componentes->getRamPc($computadora->id);
        return view('componentes.ram', compact('computadora', 'fabricantes','tipoRam', 'velocidadRam', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RamRequest $request, Computadora $computadora)
    {
        $computadora->rams()->create($request->all());
        flash('Se agregó un nuevo componente a esta PC')->success()->important();
        return redirect()->route('ram.pc', $computadora->id);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Ram  $ram
     * @return \Illuminate\Http\Response
     */
    public function update(RamRequest $request, Ram $ram)
    {
       $ram->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('ram.pc', $ram->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Ram  $ram
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ram $ram)
    {
        $ram->delete();
        flash('Se eliminó el componente seleccionado')->error()->important();
        return  redirect()->route('ram.pc', $ram->computadora_id);
    }
}

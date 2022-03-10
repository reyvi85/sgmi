<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Fuente;
//use Illuminate\Http\Request;
use App\Http\Requests\FuenteRequest;
use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class FuentesController extends Controller
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
        $stastFabricante = $this->estadistica->getFuenteFabricante();
        $stastPotencia = $this->estadistica->getFuentePotencia();
        return view('list.listFuente', compact('stastFabricante', 'stastPotencia'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function fuentePC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $potencia = $this->nomencladores->getPotencia();
        $lista = $this->componentes->getFuentePc($computadora->id);
        return view('componentes.fuente', compact('computadora', 'fabricantes','potencia', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FuenteRequest $request, Computadora $computadora)
    {
        $computadora->fuentes()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('fuente.pc', $computadora->id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Fuente  $fuente
     * @return \Illuminate\Http\Response
     */
    public function update(FuenteRequest $request, Fuente $fuente)
    {
        $fuente->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('fuente.pc', $fuente->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Fuente  $fuente
     * @return \Illuminate\Http\Response
     */
    public function destroy(Fuente $fuente)
    {
        $fuente->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('fuente.pc', $fuente->computadora_id);
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Requests\TvideoRequest;
use App\Models\Computadora;
use App\Models\Tvideo;
use Illuminate\Http\Request;
use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class TvideoController extends Controller
{
    protected $nomencladores;
    protected $componentes;
    protected $estadistica;

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
        $stastFabricante = $this->estadistica->getTvideoFabricante();
        $stastCapacidad = $this->estadistica->getTvideoCapacidad();
        return view('list.listTvideo', compact('stastFabricante', 'stastCapacidad'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function tvideoPC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $capacidad = $this->nomencladores->getVelocidadRam();
        $lista = $this->componentes->getTVideosPc($computadora->id);
        return view('componentes.tvideo', compact('computadora', 'fabricantes','capacidad', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TvideoRequest $request, Computadora $computadora)
    {
        $computadora->tvideo()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('tvideo.pc', $computadora->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tvideo  $tvideo
     * @return \Illuminate\Http\Response
     */
    public function show(Tvideo $tvideo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Tvideo  $tvideo
     * @return \Illuminate\Http\Response
     */
    public function edit(Tvideo $tvideo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tvideo  $tvideo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tvideo $tvideo)
    {
        $tvideo->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('tvideo.pc', $tvideo->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tvideo  $tvideo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tvideo $tvideo)
    {
        $tvideo->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('tvideo.pc', $tvideo->computadora_id);
    }
}

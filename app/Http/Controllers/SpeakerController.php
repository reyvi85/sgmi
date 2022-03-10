<?php

namespace App\Http\Controllers;

use App\Http\Requests\SpeakerRequest;
use App\Models\Computadora;
use App\Models\Speaker;
use Illuminate\Http\Request;

use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;


class SpeakerController extends Controller
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
        $stastFabricante = $this->estadistica->getSpeakerFabricante();
        return view('list.listSpeaker', compact('stastFabricante'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function speakerPC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $lista = $this->componentes->getSpeakerPc($computadora->id);
        return view('componentes.speaker', compact('computadora', 'fabricantes', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SpeakerRequest $request, Computadora $computadora)
    {
        $computadora->speakers()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('speaker.pc', $computadora->id);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Speaker  $speaker
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Speaker $speaker)
    {
        $speaker->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('speaker.pc', $speaker->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Speaker  $speaker
     * @return \Illuminate\Http\Response
     */
    public function destroy(Speaker $speaker)
    {
        $speaker->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('speaker.pc', $speaker->computadora_id);
    }
}

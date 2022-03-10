<?php

namespace App\Http\Controllers;

use App\Http\Requests\BackupsRequest;
use App\Models\Backup;
use App\Models\Computadora;
use App\Repository\EstadisticasRepository;
use Illuminate\Http\Request;

use App\Repository\ComponentesRepository;
use App\Repository\NomencladoresRepository;

class BackupController extends Controller
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
        $statiscFabricante = $this->estadistica->getBackupFabricante();
        $statiscPotencia = $this->estadistica->getBackupPotencia();
        return view('list.listBackups', compact('statiscFabricante', 'statiscPotencia'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function backupPC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $potencia = $this->nomencladores->getPotencia();
        $lista = $this->componentes->getBackupPc($computadora->id);
        return view('componentes.backup', compact('computadora', 'fabricantes','potencia', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BackupsRequest $request, Computadora $computadora)
    {
        $computadora->backups()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('backup.pc', $computadora->id);
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Backup  $backup
     * @return \Illuminate\Http\Response
     */
    public function update(BackupsRequest $request, Backup $backup)
    {
        $backup->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('backup.pc', $backup->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Backup  $backup
     * @return \Illuminate\Http\Response
     */
    public function destroy(Backup $backup)
    {
        $backup->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('backup.pc', $backup->computadora_id);
    }
}

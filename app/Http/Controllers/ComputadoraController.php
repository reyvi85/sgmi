<?php

namespace App\Http\Controllers;

use App\Http\Requests\Nomencladores\ComputadoraUpdateRequest;
use App\Models\Computadora;
use App\Http\Requests\Nomencladores\ComputadoraStoreRequest;
use App\Models\NmUeb;
use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;
use Illuminate\Support\Facades\Auth;

class ComputadoraController extends Controller
{
    protected $nomencladores;
    protected $componentes;
    protected $estadisticas;

    /**
     * ComputadoraController constructor.
     * @param $nomencladores
     */
    public function __construct(NomencladoresRepository $nomencladoresRepository,
                                ComponentesRepository $componentesRepository,
                                EstadisticasRepository $estadisticasRepository)
    {
        $this->nomencladores = $nomencladoresRepository;
        $this->componentes = $componentesRepository;
        $this->estadisticas = $estadisticasRepository;
        $this->middleware('CheckAdmin')->only('destroy');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $estadisticasUEB = $this->estadisticas->getComputadorasStatisc('nm_uebs','nm_ueb_id');
        $estadisticasSO = $this->estadisticas->getComputadorasStatisc('nm_sistemas', 'nm_sistema_id');
        $estadisticaUser = $this->estadisticas->getUserComputadoras();
        $os = $this->nomencladores->getSistemaOperativo();
        $dpto = $this->nomencladores->getDepartamentos();
        $ueb = $this->nomencladores->getUEBs();
       return view('list.listPC', compact('os','dpto','ueb', 'estadisticasUEB', 'estadisticasSO', 'estadisticaUser'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ComputadoraStoreRequest $request)
    {
        //dd($request);
       $pc=  Computadora::create($this->componentes->dataPC($request));
        $pc->sellos()->create([
            'number'=>$request->numero_sello,
            'user_id'=>Auth::id()
        ]);
        return redirect()->route('board.pc', $pc->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Computadora  $computadora
     * @return \Illuminate\Http\Response
     */
    public function show(Computadora $computadora)
    {
        $computadora = $this->componentes->getAllComponentsPc($computadora->id);
      $fabricantes = $this->nomencladores->getFabricantes();
      return view('componentes.showPC', compact('computadora', 'fabricantes'));
    }

    public function showPrint(Computadora $computadora)
    {
        $computadora = $this->componentes->getAllComponentsPc($computadora->id);
        $fabricantes = $this->nomencladores->getFabricantes();
        return view('expediente.expediente-print-min', compact('computadora', 'fabricantes'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Computadora  $computadora
     * @return \Illuminate\Http\Response
     */
    public function edit(Computadora $computadora)
    {
        $os = $this->nomencladores->getSistemaOperativo();
        $dpto = $this->nomencladores->getDepartamentos();
        $ueb = $this->nomencladores->getUEBs();
        return view('forms.editPC', compact('os','dpto', 'ueb', 'computadora'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Computadora  $computadora
     * @return \Illuminate\Http\Response
     */
    public function update(ComputadoraUpdateRequest $request, Computadora $computadora)
    {
        $computadora->fill($request->all())->save();
        $sello = $computadora->sellos()->where('number', $request->numero_sello)->count();
        if(!$sello){
            $computadora->sellos()->create([
                'number'=>$request->numero_sello,
                'user_id'=>Auth::id()
            ]);
        }
        flash('Se actualizaron los datos correctamente para la PC <strong>'.$computadora->nombre.'</strong>')->success()->important();
        return redirect()->route('board.pc', $computadora->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Computadora  $computadora
     * @return \Illuminate\Http\Response
     */
    public function destroy(Computadora $computadora)
    {
        $computadora->delete();
        flash('Se eliminó correctamente la PC <strong>'.$computadora->nombre.'</strong> y todo lo asociado a la misma!')->success()->important();
        return redirect()->route('computadora.index');
    }
}

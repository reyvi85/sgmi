<?php

namespace App\Http\Controllers;

use App\Http\Requests\SolucionUpdateRequest;
use App\Models\Averia;
use App\Http\Requests\AveriaStoreRequest;
use App\Models\Reporte;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReporteAveriaController extends Controller
{
    protected $repository;
    protected $repositoryStatisc;

    public function __construct(NomencladoresRepository $nomencladoresRepository, EstadisticasRepository $estadisticasRepository)
    {
        $this->repository = $nomencladoresRepository;
        $this->repositoryStatisc = $estadisticasRepository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $state = $request->estado;
        $statisc = $this->repositoryStatisc->getStatiscAverias($request->year);
        $annos = $this->repository->getYearsAverias();
        //dd($annos);

       return view('control-averias.listAverias', compact('state', 'statisc', 'annos'));
    }

    public function publicList()
    {
       return view('control-averias.listAveriasPublica');
    }



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $averias= $this->repository->getAverias();
        $dpto = $this->repository->getDepartamentos();
        return view('forms.createReporte', compact('averias', 'dpto'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AveriaStoreRequest $request)
    {
      $averia =  Averia::create([
           'user_id'=>Auth::id(),
           'nm_averia_id'=>$request->nm_averia_id,
           'nm_departamento_id'=>$request->nm_departamento_id,
           'numero_inventario'=>$request->numero_inventario,
           'nombre'=>$request->nombre,
           'lugar'=>$request->lugar,
           'num_reporte_etecsa'=>$request->num_reporte_etecsa,
           'description'=>$request->description,
           'flag'=>Auth::user()->dpto
       ]);

       flash('Se creó un nuevo registro de avería. El número de reporte es '.$averia->id)->success()->important();
       return redirect()->route('averia.create');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Reporte  $reporte
     * @return \Illuminate\Http\Response
     */
    public function show(Averia $averium)
    {
        $this->authorize('view', $averium);
        if($averium->estado ==1){
            $averium->fill(['estado'=>2])->save();
        }
       return view('control-averias.showAveria', compact('averium'));
    }

    public function publicShow(Averia $averium)
    {
        return view('control-averias.showAveriaPublica', compact('averium'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Reporte  $reporte
     * @return \Illuminate\Http\Response
     */
    public function edit(Averia $averium)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Reporte  $reporte
     * @return \Illuminate\Http\Response
     */
    public function update(SolucionUpdateRequest $request, Averia $averium)
    {
        $this->authorize('update', $averium);
        $averium->fill([
            'estado'=>3,
            'solucion'=>$request->solucion,
            'solucion_user'=>Auth::id()
        ])->save();
        flash()->success('Se ha solucionado y cerrado a esta avería')->important();
        return redirect()->route('averia.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Reporte  $reporte
     * @return \Illuminate\Http\Response
     */
    public function destroy(Averia $averium)
    {
        $this->authorize('delete', $averium);
        $averium->delete();
        flash('La averia seleccionada fue ELIMINADA con éxito!')->success()->important();
        return redirect()->route('averia.index');
    }
}

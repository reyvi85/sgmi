<?php

namespace App\Http\Controllers;

use App\Http\Requests\Nomencladores\CintaTonnerStoreRequest;
use App\Http\Requests\Nomencladores\CintaTonnerUpdateRequest;
use App\Models\CintaTonner;
use App\Repository\NomencladoresRepository;
use Illuminate\Http\Request;

class CintaTonnersController extends Controller
{
    protected $nm;

    /**
     * CreateCintaTonnerNmModelPrinter constructor.
     * @param $nm
     */
    public function __construct(NomencladoresRepository $nomencladoresRepository)
    {
        $this->nm = $nomencladoresRepository;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = $this->nm->getCintasTonners();
       return  view('nomencladores.NmCintasTonners', compact('lista'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CintaTonnerStoreRequest $request)
    {
        CintaTonner::create($request->validated());
        return redirect()->route('cintaTonner.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CintaTonner  $cintaTonner
     * @return \Illuminate\Http\Response
     */
    public function show(CintaTonner $cintaTonner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CintaTonner  $cintaTonner
     * @return \Illuminate\Http\Response
     */
    public function edit(CintaTonner $cintaTonner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CintaTonner  $cintaTonner
     * @return \Illuminate\Http\Response
     */
    public function update(CintaTonnerUpdateRequest $request, CintaTonner $cintaTonner)
    {
       $cintaTonner->fill($request->validated())->save();
        return redirect()->route('cintaTonner.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CintaTonner  $cintaTonner
     * @return \Illuminate\Http\Response
     */
    public function destroy(CintaTonner $cintaTonner)
    {
        $cintaTonner->delete();
        return redirect()->route('cintaTonner.index');
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Requests\Nomencladores\GeneracionStoreRequest;
use App\Http\Requests\Nomencladores\GeneracionUpdateRequest;
use App\Models\NmGeneracion;
use Illuminate\Http\Request;

class NmGeneracionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmGeneracion::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmGeneracion', compact('lista'));
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
    public function store(GeneracionStoreRequest $request)
    {
        NmGeneracion::create($request->all());
        flash('Se creó una nueva generación')->success()->important();
        return redirect()->route('nmGeneracion.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\NmGeneracion  $nmGeneracion
     * @return \Illuminate\Http\Response
     */
    public function show(NmGeneracion $nmGeneracion)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\NmGeneracion  $nmGeneracion
     * @return \Illuminate\Http\Response
     */
    public function edit(NmGeneracion $nmGeneracion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmGeneracion  $nmGeneracion
     * @return \Illuminate\Http\Response
     */
    public function update(GeneracionUpdateRequest $request, NmGeneracion $nmGeneracion)
    {
        $nmGeneracion->fill($request->all())->save();
        flash('Se editó correctamente esta generación!')->success()->important();
        return redirect()->route('nmGeneracion.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmGeneracion  $nmGeneracion
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmGeneracion $nmGeneracion)
    {
        $nmGeneracion->delete();
        flash('Se eliminó corecctamente la generación seleccionada!')->success()->important();
        return redirect()->route('nmGeneracion.index');
    }
}

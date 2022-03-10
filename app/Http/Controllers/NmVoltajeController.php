<?php

namespace App\Http\Controllers;

use App\Models\NmVoltaje;
use App\Http\Requests\Nomencladores\VoltajeStoreRequest,
    App\Http\Requests\Nomencladores\VoltajeUpdateRequest;

class NmVoltajeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmVoltaje::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmVoltaje',compact('lista'));
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
    public function store(VoltajeStoreRequest $request)
    {
        NmVoltaje::create($request->all());
        return redirect()->route('nmVoltaje.index');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NmVoltaje  $nmVoltaje
     * @return \Illuminate\Http\Response
     */
    public function update(VoltajeUpdateRequest $request, NmVoltaje $nmVoltaje)
    {
        $nmVoltaje->fill($request->all())->save();
        return redirect()->route('nmVoltaje.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NmVoltaje  $nmVoltaje
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmVoltaje $nmVoltaje)
    {
        $nmVoltaje->delete();
        return redirect()->route('nmVoltaje.index');
    }
}

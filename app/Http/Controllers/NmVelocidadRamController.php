<?php

namespace App\Http\Controllers;

use App\Http\Requests\Nomencladores\VelocidadRamStoreRequest;
use App\Http\Requests\Nomencladores\VelocidadRamUpdateRequest;
use App\Models\NmVelocidadRam;
use Illuminate\Http\Request;

class NmVelocidadRamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmVelocidadRam::orderBy('name','ASC')->paginate();
        //return view('nomencladores.Ram.lista',compact('lista'));
        return view('nomencladores.NmVelocidadRAM',compact('lista'));
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
    public function store(VelocidadRamStoreRequest $request)
    {
        NmVelocidadRam::create($request->all());
        flash('Se creó una nueva velocidad')->success()->important();
        return redirect()->route('nmVelocidadRam.index');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmVelocidadRam  $nmVelocidadRam
     * @return \Illuminate\Http\Response
     */
    public function update(VelocidadRamUpdateRequest $request, NmVelocidadRam $nmVelocidadRam)
    {
        $nmVelocidadRam->fill($request->all())->save();
        flash('Se editó correctamente esta velocidad!')->success()->important();
        return redirect()->route('nmVelocidadRam.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmVelocidadRam  $nmVelocidadRam
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmVelocidadRam $nmVelocidadRam)
    {
        $nmVelocidadRam->delete();
        flash('Se eliminó corecctamente la velocidad seleccionada!')->success()->important();
        return redirect()->route('nmVelocidadRam.index');
    }
}

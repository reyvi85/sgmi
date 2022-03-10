<?php

namespace App\Http\Controllers;

use App\Models\NmRam;
use App\Http\Requests\Nomencladores\RamStoreRequest,
    App\Http\Requests\Nomencladores\RamUpdateRequest;

class NmRamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmRam::orderBy('name','ASC')->paginate();
        //return view('nomencladores.Ram.lista',compact('lista'));
        return view('nomencladores.NmRAM',compact('lista'));
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
    public function store(RamStoreRequest $request)
    {
        NmRam::create($request->all());
        return redirect()->route('nmRam.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NmRam  $nmRam
     * @return \Illuminate\Http\Response
     */
    public function update(RamUpdateRequest $request, NmRam $nmRam)
    {
        $nmRam->fill($request->all())->save();
        return redirect()->route('nmRam.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NmRam  $nmRam
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmRam $nmRam)
    {
        $nmRam->delete();
        return redirect()->route('nmRam.index');
    }
}

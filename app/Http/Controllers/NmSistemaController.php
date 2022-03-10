<?php

namespace App\Http\Controllers;

use App\Models\NmSistema;
//use Illuminate\Http\Request;
use App\Http\Requests\Nomencladores\SistemaStoreRequest;
use App\Http\Requests\Nomencladores\SistemaUpdateRequest;

class NmSistemaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmSistema::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmOS',compact('lista'));
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
    public function store(SistemaStoreRequest $request)
    {
        NmSistema::create($request->all());
        return redirect()->route('nmSistema.index');
    }

      /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\NmSistema  $nmSistema
     * @return \Illuminate\Http\Response
     */
    public function edit(NmSistema $nmSistema)
    {
        return view('nomencladores.OS.editOS', compact('nmSistema'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmSistema  $nmSistema
     * @return \Illuminate\Http\Response
     */
    public function update(SistemaUpdateRequest $request, NmSistema $nmSistema)
    {
        $nmSistema->fill($request->all())->save();
        return redirect()->route('nmSistema.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmSistema  $nmSistema
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmSistema $nmSistema)
    {
        $nmSistema->delete();
        return redirect()->route('nmSistema.index');
    }
}

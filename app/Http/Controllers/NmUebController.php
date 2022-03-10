<?php

namespace App\Http\Controllers;

use App\Models\NmUeb;

use App\Http\Requests\Nomencladores\UebStoreRequest;
use App\Http\Requests\Nomencladores\UebUpdateRequest;


class NmUebController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmUeb::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmUEB',compact('lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UebStoreRequest $request)
    {
      NmUeb::create($request->all());
      return redirect()->route('nmUeb.index');

    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmUeb  $nmUeb
     * @return \Illuminate\Http\Response
     */
    public function update(UebUpdateRequest $request, NmUeb $nmUeb)
    {
        $nmUeb->fill($request->all())->save();
        return redirect()->route('nmUeb.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmUeb  $nmUeb
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmUeb $nmUeb)
    {
        $nmUeb->delete();
        return redirect()->route('nmUeb.index');
    }
}

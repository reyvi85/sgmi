<?php

namespace App\Http\Controllers;

use App\Models\NmMonitor;
use App\Http\Requests\Nomencladores\MonitorStoreRequest,
    App\Http\Requests\Nomencladores\MonitorUpdateRequest;

class NmMonitorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmMonitor::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmMonitor',compact('lista'));
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
    public function store(MonitorStoreRequest $request)
    {
        NmMonitor::create($request->all());
        return redirect()->route('nmMonitor.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NmMonitor  $nmMonitor
     * @return \Illuminate\Http\Response
     */
    public function update(MonitorUpdateRequest $request, NmMonitor $nmMonitor)
    {
        $nmMonitor->fill($request->all())->save();
        return redirect()->route('nmMonitor.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NmMonitor  $nmMonitor
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmMonitor $nmMonitor)
    {
        $nmMonitor->delete();
        return redirect()->route('nmMonitor.index');
    }
}

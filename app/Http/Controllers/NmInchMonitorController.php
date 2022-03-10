<?php

namespace App\Http\Controllers;

use App\Http\Requests\Nomencladores\NmInchMonitorStoreRequest;
use App\Http\Requests\Nomencladores\NmInchMonitorUpdateRequest;
use App\Models\NmInchMonitor;
use App\Repository\NomencladoresRepository;
use Illuminate\Http\Request;

class NmInchMonitorController extends Controller
{
    protected $nm;

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
        $lista = $this->nm->getInchMonitor();
        return view('nomencladores.NmInchMonitor', compact('lista'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(NmInchMonitorStoreRequest $request)
    {
        NmInchMonitor::create($request->all());
        return redirect()->route('nmInchMonitor.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmInchMonitor  $nmInchMonitor
     * @return \Illuminate\Http\Response
     */
    public function update(NmInchMonitorUpdateRequest $request, NmInchMonitor $nmInchMonitor)
    {
        $nmInchMonitor->fill($request->all())->save();
        return redirect()->route('nmInchMonitor.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmInchMonitor  $nmInchMonitor
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmInchMonitor $nmInchMonitor)
    {
        $nmInchMonitor->delete();
        return redirect()->route('nmInchMonitor.index');
    }
}

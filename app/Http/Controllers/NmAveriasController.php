<?php

namespace App\Http\Controllers;

use App\Http\Requests\Nomencladores\NmAveriaUpdateRequest;
use App\Http\Requests\Nomencladores\NmAveriaStoreRequest;
use App\Models\NmAveria;
use App\Repository\NomencladoresRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NmAveriasController extends Controller
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
        $lista = $this->nm->getAverias();
        return view('nomencladores.NmAveria', compact('lista'));
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
    public function store(NmAveriaStoreRequest $request)
    {
        NmAveria::create([
            'name'=>$request->name,
            'dpto'=>Auth::user()->dpto
        ]);
        return redirect()->route('nmAveria.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\NmAveria  $nmAveria
     * @return \Illuminate\Http\Response
     */
    public function show(NmAveria $nmAverium)
    {
       dd($nmAverium->id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\NmAveria  $nmAveria
     * @return \Illuminate\Http\Response
     */
    public function edit(NmAveria $nmAveria)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmAveria  $nmAveria
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, NmAveria $nmAverium)
    {
        $this->authorize('update', $nmAverium);
        $nmAverium->fill($request->all())->save();
        return redirect()->route('nmAveria.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmAveria  $nmAveria
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmAveria $nmAverium)
    {
        $this->authorize('delete', $nmAverium);
        $nmAverium->delete();
        return redirect()->route('nmAveria.index');
    }
}

<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckDepartamento
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $dpto)
    {
        if(Auth::user()->dpto != $dpto){
            flash('No tienes acceso a esta zona: <strong>'.strtoupper(getListDepartamento()[$dpto]).'</strong>!')->error()->important();
            return redirect()->back();
        }
        return $next($request);
    }
}

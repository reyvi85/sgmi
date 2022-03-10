<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckAdministrator
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::user()->admin == false){
            flash('<i class="fas fa-info-circle"></i> Tu rol de acceso no te permite llevar a cabo esta acción <strong>'.Auth::user()->name.'</strong>')->error()->important();
            return redirect()->back();
        }
        return $next($request);
    }
}

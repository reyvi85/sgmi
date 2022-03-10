<?php

namespace App\Providers;
use App\Models\Averia;
use App\Models\NmAveria;
use App\Policies\AveriaPolicy;
use App\Policies\NmAveriaPolicy;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        Averia::class => AveriaPolicy::class,
        NmAveria::class =>NmAveriaPolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //
    }
}

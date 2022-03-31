<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="{{asset('images/favicon.png')}}">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link href="{{asset('fonts/fontawesome/css/fontawesome-all.min.css')}}" type="text/css" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/jquery.dataTables.min.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-dark bg-dark shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>
                @auth
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->

                    <ul class="navbar-nav mr-auto">
                        @if(Auth::user()->dpto == 1)
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('computadora.index') }}">Computadoras</a>
                        </li>
                            <img src="" alt="" height="">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Componentes y periféricos
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{route('board.index')}}"><i class="fas fa-plus-circle"></i> Motherboard</a>
                                <a class="dropdown-item" href="{{route('procesador.index')}}"><i class="fas fa-plus-circle"></i> Microprocesador</a>
                                <a class="dropdown-item" href="{{route('fuente.index')}}"><i class="fas fa-plus-circle"></i> Fuente Interna</a>
                                <a class="dropdown-item" href="{{route('hdd.index')}}"><i class="fas fa-plus-circle"></i> HDD</a>
                                <a class="dropdown-item" href="{{route('ram.index')}}"><i class="fas fa-plus-circle"></i> Memoria RAM</a>
                                <a class="dropdown-item" href="{{route('cd.index')}}"><i class="fas fa-plus-circle"></i> Lector de CD/DVD</a>
                                <a class="dropdown-item" href="{{route('tvideo.index')}}"><i class="fas fa-plus-circle"></i> Tarjetas de Video</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="{{route('monitor.index')}}"><i class="fas fa-plus-circle"></i> Monitor</a>
                                <a class="dropdown-item" href="{{route('teclado.index')}}"><i class="fas fa-plus-circle"></i> Teclado</a>
                                <a class="dropdown-item" href="{{route('mouse.index')}}"><i class="fas fa-plus-circle"></i> Mouse</a>
                                <a class="dropdown-item" href="{{route('backup.index')}}"><i class="fas fa-plus-circle"></i> UPS</a>
                                <a class="dropdown-item" href="{{route('printer.index')}}"><i class="fas fa-plus-circle"></i> Impresora</a>
                                <a class="dropdown-item" href="{{route('speaker.index')}}"><i class="fas fa-plus-circle"></i> Speakers</a>
                            </div>
                        </li>

                            <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      Nomencladores
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                      <a class="dropdown-item" href="{{route('nmUeb.index')}}"><i class="fas fa-address-card"></i> Uebs</a>
                                      <a class="dropdown-item" href="{{route('nmDepartamento.index')}}"><i class="fas fa-box"></i> Departamentos</a>
                                      <a class="dropdown-item" href="{{route('nmSistema.index')}}"><i class="fab fa-microsoft"></i> Sistemas operativos</a>
                                        <a class="dropdown-item" href="{{route('nmFabricante.index')}}"><i class="fas fa-building"></i> Fabricantes</a>
                                        <a class="dropdown-item" href="{{route('nmPotencia.index')}}"><i class="fas fa-battery-quarter"></i> Potencias</a>
                                        <a class="dropdown-item" href="{{route('nmCapacidadHdd.index')}}"><i class="fas fa-hdd"></i> Capacidad de HDD</a>
                                        <a class="dropdown-item" href="{{route('nmConector.index')}}"><i class="fab fa-usb"></i> Conectores</a>
                                        <a class="dropdown-item" href="{{route('nmMonitor.index')}}"><i class="fas fa-desktop"></i> Monitores</a>
                                        <a class="dropdown-item" href="{{route('nmInchMonitor.index')}}"><i class="fas fa-desktop"></i> Tamaño de monitores</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="{{route('nmPrinter.index')}}"><i class="fas fa-print"></i> Tipos Impresoras</a>
                                        <a class="dropdown-item" href="{{route('nmModelPrinter.index')}}"><i class="fas fa-print"></i> Modelos Impresoras</a>
                                        <a class="dropdown-item" href="{{route('cintaTonner.index')}}"><i class="fas fa-print"></i> Tonner y cintas</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="{{route('nmVoltaje.index')}}"><i class="fas fa-bolt"></i> Voltaje</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="{{route('nmRam.index')}}"><i class="fas fa-microchip"></i> Memorias RAM</a>
                                        <a class="dropdown-item" href="{{route('nmVelocidadRam.index')}}"><i class="fas fa-microchip"></i> Velocidad RAM</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="{{route('nmProcesador.index')}}"><i class="fas fa-microchip"></i> Procesador</a>
                                        <a class="dropdown-item" href="{{route('nmGeneracion.index')}}"><i class="fas fa-clock"></i> Generación de Board</a>
                                    </div>
                                  </li>
                        @endif
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-wrench"></i> Control de averías
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="{{ route('averia.index') }}"><i class="fas fa-list"></i> Lista de averías</a>
                                <a class="dropdown-item" href="{{route('averia.create')}}"><i class="fas fa-wrench"></i> Crear nueva</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="{{route('nmAveria.index')}}"><i class="fas fa-wrench"></i> Nomenclador avería</a>
                            </div>
                        </li>
                    </ul>


                @endauth
                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    @if (Auth::user()->admin == true)
                                        <a class="dropdown-item" href="{{ route('user.index') }}"><i class="fas fa-user"></i> Gestion de usuarios</a>
                                        <a class="dropdown-item" href="{{ route('entradaMedio.index') }}"><i class="fas fa-retweet"></i> Entrega de medios</a>
                                        <a class="dropdown-item" href="{{ route('cmd') }}"><i class="fas fa-code"></i> Consola de comandos</a>
                                        <div class="dropdown-divider"></div>
                                    @endif

                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @include('flash::message')
            <div class="container-fluid" id="contenido">
                <div class="row">
                    <div class="col-md-12">
                        @include('partial.errors')
                    </div>
                </div>
                    @yield('content')
            </div>
        </main>
         <!-- Scripts -->
    <!--- JSs -->
    <script src="{{asset('js/jquery-3.4.1.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('js/bootstrap.bundle.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('js/jquery.validate.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('js/messages_es.js')}}" type="text/javascript"></script>
    <script src="{{asset('js/MyScript.js')}}" type="text/javascript"></script>
    <script src="{{asset('js/jquery.dataTables.min.js')}}" type="text/javascript"></script>
        @yield('script')
    </div>
</body>
</html>

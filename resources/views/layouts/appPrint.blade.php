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

@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fas fa-wrench"></i> Control de Averías</h3>
                </div>
                <div class="card-body">
                    <div class="row pt-2">
                            <div class="col-md-12 text-right">
                                <div class="dropdown show">
                                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-filter"></i> Cambiar estado
                                    </a>

                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                        <a class="dropdown-item" href="{{route('averia.index',['estado'=>1])}}">Abierto</a>
                                        <a class="dropdown-item" href="{{route('averia.index',['estado'=>2])}}">En Proceso</a>
                                        <a class="dropdown-item" href="{{route('averia.index',['estado'=>3])}}">Cerrado</a>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <table class="table" id="averias">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Averia</th>
                                    <th scope="col">Departamento</th>
                                    <th scope="col">Reporta</th>
                                    <th scope="col">Red</th>
                                    @if (Auth::user()->dpto == 1)
                                        <th scope="col"># Rep. ETECSA</th>
                                    @endif
                                    <th scope="col">Fecha</th>
                                    <th scope="col">Estado</th>
                                    <th></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <hr>
                    <div class="col-md-4">
                        <div class="dropdown show text-right mb-2">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-calendar"></i> Años
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                @foreach($annos as $key=>$value)
                                    <a class="dropdown-item" href="{{route('averia.index',['year'=>$value])}}">{{$value}}</a>
                                @endforeach

                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-sm table-striped table-bordered">
                                <thead class="thead-dark">
                                <tr>
                                    <th colspan="5" class="text-center">ESTADÍSTICAS</th>
                                </tr>
                                <tr>
                                    <th scope="col">Meses</th>
                                    <th scope="col" class="text-center">Abiertas</th>
                                    <th scope="col" class="text-center">En Proceso</th>
                                    <th scope="col" class="text-center">Cerradas</th>
                                    <th scope="col" class="text-center">TOTAL</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($statisc as $row)
                                    <tr>
                                        <th scope="row">{{getMeses($row->mes)}}</th>
                                        <td class="text-center">{{$row->abierto}}</td>
                                        <td class="text-center">{{$row->proceso}}</td>
                                        <td class="text-center">{{$row->cerrado}}</td>
                                        <td class="text-center">{{($row->total)}}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
    @endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#averias').DataTable({
                "serverSide":true,
                "ajax":"{{url('api/averias').'/'.Auth::user()->dpto.'/'.$state}}",
                "columns":[
                    {data: 'id'},
                    {data: 'Averia'},
                    {data: 'Departamento'},
                    {data: 'nombre'},
                    {data: 'Lugar'},
                    @if (Auth::user()->dpto == 1)
                        {data: 'num_reporte_etecsa'},
                    @endif
                    {data: 'Fecha'},
                    {data: 'Estado'},
                    //{data: 'IdPC'},
                    {data: 'btn'},
                ]
            });
        });
    </script>
    @endsection


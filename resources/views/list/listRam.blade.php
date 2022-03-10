@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <h4><i class="fas fa-list"></i> RAMs</h4>
            <hr>
        </div>
    </div>
    <div class="row">

        <div class="col-md-12 table-responsive">
            <table class="table" id="rams">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Serie</th>
                    <th scope="col">Fabricante</th>
                    <th scope="col">Velocidad</th>
                    <th scope="col">Tipo</th>
                    <th scope="col">PC</th>
                    <th scope="col">UEB</th>
                    <th></th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
    @component('estadisticas.statiscComponent',[
            'titulo1'=>'FABRICANTE',
            'data1'=>$stastFabricante,
            'titulo2'=>'VELOCIDAD',
            'data2'=>$stastVelocidad,
            'titulo3'=>'TIPO',
            'data3'=>$stastTipo,
            ])
    @endcomponent

    @endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#rams').DataTable({
                "serverSide":true,
                "ajax":"{{url('api/rams')}}",
                "columns":[
                    {data: 'id'},
                    {data: 'sn'},
                    {data: 'Fabricante'},
                    {data: 'Velocidad'},
                    {data: 'Tipo'},
                    {data: 'Computadora'},
                    {data: 'UEB'},
                    //{data: 'IdPC'},
                    {data: 'btn'},
                ]
            });
        });
    </script>
    @endsection


@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <h4><i class="fas fa-list"></i> Fuentes</h4>
            <hr>
        </div>
    </div>
    <div class="row">

        <div class="col-md-12 table-responsive">
            <table class="table" id="fuentes">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Serie</th>
                    <th scope="col">Modelo</th>
                    <th scope="col">Fabricante</th>
                    <th scope="col">Potencia</th>
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
            'titulo2'=>'POTENCIA',
            'data2'=>$stastPotencia
            ])
    @endcomponent
    @endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#fuentes').DataTable({
                "serverSide":true,
                "ajax":"{{url('api/fuentes')}}",
                "columns":[
                    {data: 'id'},
                    {data: 'sn'},
                    {data: 'model'},
                    {data: 'Fabricante'},
                    {data: 'Potencia'},
                    {data: 'Computadora'},
                    {data: 'UEB'},
                    //{data: 'IdPC'},
                    {data: 'btn'},
                ]
            });
        });
    </script>
    @endsection


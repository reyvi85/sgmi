@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <h4><i class="fas fa-list"></i> Microprocesador</h4>
            <hr>
        </div>
    </div>
    <div class="row">

        <div class="col-md-12 table-responsive">
            <table class="table" id="procesador">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Serie</th>
                    <th scope="col">Velocidad</th>
                    <th scope="col">Fabricante</th>
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
            'data1'=>$statiscFabricante,
            'titulo2'=>'TIPO',
            'data2'=>$statiscTipo
            ])
    @endcomponent
    @endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#procesador').DataTable({
                "serverSide":true,
                "ajax":"{{url('api/microprocesadors')}}",
                "columns":[
                    {data: 'id'},
                    {data: 'sn'},
                    {data: 'velocidad'},
                    {data: 'Fabricante'},
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


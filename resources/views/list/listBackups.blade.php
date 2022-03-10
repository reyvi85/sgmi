@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <h4><i class="fas fa-list"></i> Backups</h4>
            <hr>
        </div>
    </div>
    <div class="row">

        <div class="col-md-12 table-responsive">
            <table class="table" id="backups">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Serie</th>
                    <th scope="col">Modelo</th>
                    <th scope="col">Inventario</th>
                    <th scope="col">Fabricante</th>
                    <th scope="col">Potencia</th>
                    <th scope="col"># Baterías</th>
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
            'titulo2'=>'POTENCIA',
            'data2'=>$statiscPotencia
            ])
    @endcomponent
    @endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#backups').DataTable({
                "serverSide":true,
                "ajax":"{{url('api/backups')}}",
                "columns":[
                    {data: 'id'},
                    {data: 'sn'},
                    {data: 'model'},
                    {data: 'inventario'},
                    {data: 'Fabricante'},
                    {data: 'Potencia'},
                    {data: 'Baterias'},
                    {data: 'Computadora'},
                    {data: 'UEB'},
                    //{data: 'IdPC'},
                    {data: 'btn'},
                ]
            });
        });
    </script>
    @endsection


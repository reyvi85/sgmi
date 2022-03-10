@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <h4><i class="fas fa-list"></i> Impresoras</h4>
            <hr>
        </div>
    </div>
    <div class="row">

        <div class="col-md-12 table-responsive">
            <table class="table" id="speakers">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Serie</th>
                    <th scope="col">Modelo</th>
                    <th scope="col">Inventario</th>
                    <th scope="col">Fabricante</th>
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
            'data1'=>$stastFabricante
            ])
    @endcomponent
    @endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#speakers').DataTable({
                "serverSide":true,
                "ajax":"{{url('api/speaker')}}",
                "columns":[
                    {data: 'id'},
                    {data: 'sn'},
                    {data: 'model'},
                    {data: 'inventario'},
                    {data: 'Fabricante'},
                    {data: 'Computadora'},
                    {data: 'UEB'},
                    //{data: 'IdPC'},
                    {data: 'btn'},
                ]
            });
        });
    </script>
    @endsection


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
            <table class="table" id="impresoras">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Serie</th>
                    <th scope="col">Inventario</th>
                    <th scope="col">Modelo</th>
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

    @endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#impresoras').DataTable({
                "serverSide":true,
                "ajax":"{{url('api/printers')}}",
                "columns":[
                    {data: 'id'},
                    {data: 'sn'},
                    {data: 'inventario'},
                    {data: 'Modelo'},
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


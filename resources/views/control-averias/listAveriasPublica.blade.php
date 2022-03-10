@extends('layouts.appPrint')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fas fa-wrench"></i> Control de Averías</h3>
                </div>
                <div class="card-body">
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
                                    <th scope="col"># Rep. ETECSA</th>
                                    <th scope="col">Fecha</th>
                                    <th scope="col">Estado</th>
                                    <th></th>
                                </tr>
                                </thead>
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
                "ajax":"{{url('api/averias/1')}}",
                "columns":[
                    {data: 'id'},
                    {data: 'Averia'},
                    {data: 'Departamento'},
                    {data: 'nombre'},
                    {data: 'Lugar'},
                    {data: 'num_reporte_etecsa'},
                    {data: 'Fecha'},
                    {data: 'Estado'},
                    //{data: 'IdPC'},
                    {data: 'btn'},
                ]
            });
        });
    </script>
    @endsection


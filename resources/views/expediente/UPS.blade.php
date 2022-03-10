<div class="py-2">
    <div class="card">
        <div class="card-header">
            <h5>UPS</h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-sm">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">SN</th>
                        <th scope="col" class="text-center">MODELO</th>
                        <th scope="col" class="text-center">INVENTARIO</th>
                        <th scope="col" class="text-center">FABRICANTE</th>
                        <th scope="col" class="text-center">POTENCIA</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($pc->fuentes as $row)
                        <tr>
                            <th scope="row">{{$row->sn}}</th>
                            <td class="text-center">{{$row->model}}</td>
                            <td class="text-center">{{$row->inventario}}</td>
                            <td class="text-center">{{$row->nm_fabricante->name}}</td>
                            <td class="text-center">{{$row->nm_potencia->name}}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

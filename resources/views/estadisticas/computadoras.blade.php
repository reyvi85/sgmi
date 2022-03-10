<div class="row py-2">
    <div class="col-md-12">
        <h3><i class="fas fa-chart-bar"></i> Estadísticas</h3><hr>
    </div>
</div>
<div class="row py-2">
    <div class="col-md-3">
        <div class="table-responsive">
            <table class="table table-sm table-striped table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">UEB</th>
                    <th scope="col" class="text-center"># Computadoras</th>
                </tr>
                </thead>
                <tbody>
                @foreach($estadisticasUEB as $row)
                    <tr>
                        <th scope="row">{{$row->name}}</th>
                        <td class="text-center">{{$row->computadoras_count}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <div class="col-md-3">
        <div class="table-responsive">
            <table class="table table-sm table-striped table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">SISTEMA OPERATIVO</th>
                    <th scope="col" class="text-center"># Computadoras</th>
                </tr>
                </thead>
                <tbody>
                @foreach($estadisticasSO as $row)
                    <tr>
                        <th scope="row">{{$row->name}}</th>
                        <td class="text-center">{{$row->computadoras_count}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <div class="col-md-3">
        <div class="table-responsive">
            <table class="table table-sm table-striped table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">USUARIO</th>
                    <th scope="col" class="text-center"># Computadoras</th>
                </tr>
                </thead>
                <tbody>
                @foreach($estadisticaUser as $row)
                    <tr>
                        <th scope="row">{{$row->name}}</th>
                        <td class="text-center">{{$row->computadoras_count}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
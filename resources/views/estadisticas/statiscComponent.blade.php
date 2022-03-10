<div class="row py-2">
    <div class="col-md-12">
        <h3><i class="fas fa-chart-bar"></i> Estadísticas</h3><hr>
    </div>
</div>

<div class="row py-2">
    @if (isset($titulo1) && isset($data1))
        <div class="col-md-4">
            <div class="table-responsive">
                <table class="table table-sm table-striped table-bordered">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">{{$titulo1}}</th>
                        <th scope="col" class="text-center">#</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($data1 as $row)
                        <tr>
                            <th scope="row">{{$row->name}}</th>
                            <td class="text-center">{{$row->totalComponentes}}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    @endif
    @if (isset($titulo2) && isset($data2))
            <div class="col-md-4">
                <div class="table-responsive">
                    <table class="table table-sm table-striped table-bordered">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">{{$titulo2}}</th>
                            <th scope="col" class="text-center">#</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($data2 as $row)
                            <tr>
                                <th scope="row">{{$row->name}}</th>
                                <td class="text-center">{{$row->totalComponentes}}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
    @endif
    @if (isset($titulo3) && isset($data3))
        <div class="col-md-4">
            <div class="table-responsive">
                <table class="table table-sm table-striped table-bordered">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">{{$titulo3}}</th>
                        <th scope="col" class="text-center">#</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($data3 as $row)
                        <tr>
                            <th scope="row">{{$row->name}}</th>
                            <td class="text-center">{{$row->totalComponentes}}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        @endif
</div>
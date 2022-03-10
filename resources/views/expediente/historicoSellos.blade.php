<table class="table table-striped table-sm">
    <thead class="thead-dark">
    <tr>
        <th scope="col">#</th>
        <th scope="col" class="text-center">FECHA</th>
        <th scope="col" class="text-center">USUARIO</th>
    </tr>
    </thead>
    <tbody>
    @foreach($pc->sellos->take(10) as $row)
    <tr>
        <th scope="row">{{$row->number}}</th>
        <td class="text-center">{{$row->created_at}}</td>
        <td class="text-center">{{$row->user->name}}</td>
    </tr>
        @endforeach
    </tbody>
</table>
@if (count($errors) >0)
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <h5 class="alert-heading">Ups! ERROR:</h5>
        <hr>
        <ul>
            @foreach($errors->all() as $error)
                <li class="text-sm-left">{{$error}}</li>
            @endforeach
        </ul>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif

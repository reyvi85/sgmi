@if (Auth::check())
   <a href="{{route('averiaPublica.show', $id)}}"><i class="fas fa-eye" title="Ver avería"></i></a>
@else
    <a href="{{route('averia.show', $id)}}"><i class="fas fa-eye" title="Ver avería"></i></a>
@endif
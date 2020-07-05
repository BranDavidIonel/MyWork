@extends('layouts.app')

@section('content')
<div class="row">
<div class="col-xs-12 col-sm-12  col-md-12 col-lg-12  margin-tb">



<div class="pull-left">
<h2><p class="text-secondary text-lg-left"> My personal projects list: </p> </h2>

</div>
<table class="table table-bordered">
<tr>
<th>Name</th>
<th>Descreption</th>
<th>Launch link</th>
<th>Images</th>
<th>Source code link</th>
<th>Action</th>

</tr>
@foreach($get_mywork as $line)
<tr>
<td>{{ $line->name }}</td>
<td>{{ str_limit($line->description,$limit=70) }}</td>
<td><a href="{{ $line->launch_link }}"> Push </a></td>
<td><img src="{{URL::to($line->images)}}" height="450px" width="400px"> </td>
<td><a href="{{ $line->source_code_link }}" > Push </a></td>
<td>
 <a class ="btn btn-info" href="{{URL:: to('show/project/'.$line->id)}}">Show</a>

</td>
</tr>
@endforeach
</table>


{!! $get_mywork->links() !!}
</div>
</div>

@endsection

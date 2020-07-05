@extends('MyWork.layout')
@section('content')
<div class="row">
<div class="col-lg-12 margin-tb">

@if($message=Session::get('success'))
<div class="alert alert-success">
<p> {{$message}} </p>
</div>
<br> <br>

</div>
@endif

<div class="pull-left">
<h2> My personal projects list: </h2>
</div>
<div class="pull-right">
<a class="btn  btn-primary" href="{{route('create.MyWork')}}">Add a new project </a>

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
<td><img src="{{URL::to($line->images)}}" height="550px" width="480px"> </td>
<td><a href="{{ $line->source_code_link }}" > Push </a></td>
<td>
 <a class ="btn btn-info" href="{{URL:: to('show/project/'.$line->id)}}">Show</a>
 <a class ="btn btn-primary" href="{{URL:: to('edit/project/'.$line->id)}}">Edit </a>
 <a class ="btn btn-danger" href="{{URL::to('delete/project/'.$line->id)}}" 
 onclick="return confirm ('Are you sure?')">Delete </a>
</td>
</tr>
@endforeach
</table


{!! $get_mywork->links() !!}
</div>

@endsection

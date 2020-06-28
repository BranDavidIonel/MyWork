@extends('MyWork.layout')
@section('content')
<div class="row">
<div class="col-lg-12 margin-tb">

@if($message=Session::get('success'))
<div class="alert alert-succes">
<p> {{$message}} </p>
</div>
<br> <br>
@endif
</div>


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
<th>Lunch link</th>
<th>Images</th>
<th>Source code link</th>
<th>Action</th>

</tr>
@foreach($get_mywork as $line)
<tr>
<td>{{ $line->name }}</td>
<td>{{ $line->description }}</td>
<td><a href="{{ $line->launch_link }}"> Push </a></td>
<td><img src="{{URL::to($line->images)}}" height="150px" width="150px"> </td>
<td><a href="{{ $line->source_code_link }}" > Push </a></td>
<td>
 <a class ="btn btn-info" href>Show</a>
 <a class ="btn btn-primary" href>Edit </a>
 <a class ="btn btn-danger" href>Delete </a>
</td>
</tr>
@endforeach
</table>



</div>

@endsection

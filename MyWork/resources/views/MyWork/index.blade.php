@extends('MyWork.layout')
@section('content')
<div class="row">
<div class="col-lg-12 margin-tb">
<div class="pull-left">
<h2> My personal projects list: </h2>
</div>
<div class="pull-right">
<button class="btn" href="{{route('create.MyWork')}}">Add a new project </button>

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
<td>{{ $line->name }}</td>
<td>{{ $line->description }}</td>
<td><a href="{{ $line->launch_link }}"> Push </a></td>
<td>{{ $line->images }}</td>
<td><a href="{{ $line->source_code_link }}" > Push </a></td>
<td>
 <a class ="btn btn-info" href>Show</a>
 <a class ="btn btn-primary" href>Edit </a>
 <a class ="btn btn-danger" href>Delete </a>
</td>
@endforeach
</table>


</div>
</div>

@endsection

@extends('layouts.app')

@section('content')
<div class="container ">
<form action="{{route('tag.store')}}" method="POST" enctype="multipart/form-data">
@csrf

  
    <strong>Tag </strong>
    <input type="text" name="tag" class="form-control">
    <strong>Images </strong>
    <input type="file" name="image" class="form-control" >
    <button type="submit" class="btn btn-primary">Submit </button>

</form> 
</div>
   

@endsection
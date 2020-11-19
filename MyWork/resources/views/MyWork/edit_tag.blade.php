@extends('layouts.app')

@section('content')
<div class="container ">
<h2> Edit tag </h2>
<form action="{{route('tag.update',['id'=>$tag->id])}}" method="POST" enctype="multipart/form-data">
    @csrf
    <strong>Tag </strong>
    <input type="text" name="tag" class="form-control" value="{{$tag->name}}">
    <strong>Image </strong>
    <input type="file" name="image" class="form-control" >
    <strong>Old image</strong>
    <div>
    <img name="old_image"href="{{$tag->image}}">
    <input type="hidden" name="old_image" value="{{$tag->image }}">
    </div>
    <button type="submit" class="btn btn-primary">Update </button>

</form> 
</div>
   

@endsection
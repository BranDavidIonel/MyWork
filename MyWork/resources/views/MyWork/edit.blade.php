@extends('layouts.app')

@section('content')
<div class="col-xs-12 col-sm-12  col-md-12 col-lg-12  margin-tb">
 <div class="pull-left">
<h2> Edit </h2>
  </div> 
<div class="pull-right">
<a class="btn  btn-primary" href="{{route('home')}}">Back </a>

  </div>  
  </div>
<form action="{{url('update/project/' .$project->id)}}" method="POST" enctype="multipart/form-data">
@csrf
<div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6">
    <strong>Name </strong>
    <input type="text" name="name" class="form-control" value="{{$project->name}}"> 
   
    <strong>Description </strong>
    <textarea type="text" name="description" class="form-control" 
    placeholder="details" style="height:150px"> 
    {{$project->description}}
    </textarea>
    <strong>Launch </strong>
    <input type="text" name="launch_link" class="form-control" value="{{$project->launch_link}}"> 
    
    <strong>Images </strong>
    <input type="file" name="images[]" class="form-control"  multiple> 

    <div class="col-xs-12 col-sm-12 col-md-12" >
    @foreach(explode(',', $project->images) as $image)
    <strong>Old Image </strong>
    <img src="{{URL::to($image)}}" height="550px" width="480px">
    @endforeach
    
    <input type="hidden" name="old_image" value="{{$project->images }}">
    <div>

    <strong>Source code link </strong>
    <input type="text" name="source_code_link" class="form-control" value="{{$project->source_code_link}}">
    <div>
    <select name="tags[]" multiple required>
        @foreach($tags_new as $tag)
		<option  class="list-group-item list-group-item-secondary" value="{{ $tag->id}}">{{$tag->name}} </option>
	    @endforeach
    </select>
    </div>
    <div>
    <strong>Old tags</strong>
    <ul class="list-group">
	  @foreach($project->Tags as $tag)
		<li  class="list-group-item list-group-item-success" value="{{ $tag->id}}">{{$tag->name}} <img src="{{URL::to($tag->image)}}" width="50px" height="50px"> </li>
	  @endforeach
    </ul>

    @error('tags')
        <p> {{$message}} </p>
    @enderror 
    <button type="submit" class="btn btn-primary">Submit </button>
    </div>
</div>

</form>


@endsection
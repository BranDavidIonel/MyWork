@extends('layouts.app')

@section('content')
<div class="col-xs-12 col-sm-12  col-md-12 col-lg-12  margin-tb">
 <div class="pull-left">
<h2> Add new project </h2>
  </div> 
<div class="pull-right">
<a class="btn btn-success" href="{{route('home')}}" >  Back  </a>

  </div>  
  </div>
<form action="{{route('MyWork.store')}}" method="POST" enctype="multipart/form-data">
@csrf
<div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6">
    <strong>Name </strong>
    <input type="text" name="name" class="form-control"> 
   
    <strong>Description </strong>
    <textarea type="text" name="description" class="form-control" placeholder="details" style="height:150px"> 
    </textarea>
    <strong>Launch </strong>
    <input type="text" name="launch_link" class="form-control"> 
    
    <strong>Images </strong>
    <input type="file" name="images[]" class="form-control" multiple> 
    
    <strong>Source code link </strong>
    <input type="text" name="source_code_link" class="form-control" >  
    <button type="submit" class="btn btn-primary">Submit </button>
    </div>
</div>

</form>


@endsection
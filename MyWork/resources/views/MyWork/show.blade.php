@extends('layouts.app')

@section('content')
<div class="col-xs-12 col-sm-12  col-md-12 col-lg-12  margin-tb">
 <div class="pull-left">
<h2> Show </h2>
  </div> 
<div class="pull-right">
<a class="btn btn-success" href="{{route('MyWork.index')}}">Back </a>

  </div>  
  </div>
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
    <div class="form group">
    <strong> Project name: </strong>
    {{ $data->name}}
    </div>
    <div class="form group">
    <strong> Project description: </strong>
    {{ $data->description}}
    </div>
    <div class="form group">
    <strong> Project link launch: </strong>
    {{ $data->launch_link}}
    </div>
    <div class="form group">
    <strong> Project  image: </strong> 
    <img src="{{URL::to($data->images)}}" height="150px" width="150px"> 
    </div>
    <div class="form group">    
    <strong> Project link source code: </strong>
    {{ $data->source_code_link}}
    </div>
    
   
</div>

</div>


@endsection
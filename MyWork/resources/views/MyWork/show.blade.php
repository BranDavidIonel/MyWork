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
<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 margin-tb" >
    <div class="form group">
    <h2><strong> Project name: </strong> </h2>
     <p class="font-weight-bolder"> {{ $data->name}} </p>
    </div>
    <div class="form group">
    <strong> Project description: </strong>
    <p class="font-weight-bolder">{{ $data->description}}</P>
    </div>
</div>
<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4  margin-tb ">
    <div class="form group">
    <h2><strong> Project link launch: </strong></h2>
    <p class="font-weight-bolder">{{ $data->launch_link}}</p>
    </div>
</div>
<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 margin-tb">
    <div class="form group">    
    <h2><strong> Project link source code: </strong></h2>
    <p class="font-weight-bolder">{{ $data->source_code_link}}</p>
    </div>
</div>
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 margin-tb">
    <div class="form group">
    <h2> <strong> Project  images: </strong> </h2>
</div>
<div class="row">
    @foreach(explode(',', $data->images) as $image) 
    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 margin-tb">
    <img src="{{URL::to($image)}}" height="540px" width="960px">
    </div>
    @endforeach 
 </div>  
</div>

    
   
</div>

</div>


@endsection
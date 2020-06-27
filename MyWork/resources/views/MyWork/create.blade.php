@extends('MyWork.layout')
@section('content')
<div class="col-lg-12  col-sm-6  col-md-12 margin-tb">
 <div class="pull-left">
<h2> Add new project </h2>
  </div> 
<div class="pull-right">
<button class="btn" href="{{route('MyWork.index')}}">Back </button>

  </div>  
  </div>
<form action="" method="POST" enctype="multipart/form-data">
<div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6">
    <strong>Name </strong>
    <input type="text" name="name" class="form-control"> 

    </div>
</div>

</form>


@endsection
@extends('layouts.app')
@section('header')
<div class="pull-left">
<h2><p class="text-secondary text-lg-left"> My personal projects list: </p> </h2>

</div>
@endsection
@section('content')
<div class="row">
<div class="col-xs-12 col-sm-12  col-md-12 col-lg-12  margin-tb">

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
<td>

<?php
/*
$images_=$line->images;
$imagesSplit=explode(',',$images_);
foreach($imagesSplit as $image){
    */
?>
@foreach(explode(',', $line->images) as $image)
<img src="{{URL::to($image)}}" height="550px" width="600px">
@endforeach
<!--<img src="URL::to($image)" height="550px" width="480px">-->
<?php
/*
}
*/
?>
</td>
<td><a href="{{ $line->source_code_link }}" > Push </a></td>
<td>
 <a class ="btn btn-info" href="{{URL:: to('show/project/'.$line->id)}}">Show</a>

</td>
</tr>
@endforeach
</table>


{!! $get_mywork->links() !!}
</div>
</div>

@endsection

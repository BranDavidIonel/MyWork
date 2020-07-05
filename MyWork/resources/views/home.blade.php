@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xs-12 col-sm-12  col-md-12 col-lg-12  margin-tb">
            <div class="card">
                <div class="card-header">Admin</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    
                    <div class="pull-right">
                    <a class="btn  btn-primary" href="{{route('create.MyWork')}}">Add a new project </a>

                    </div>
                  

                    <div class="row">
                    <div class="col-xs-12 col-sm-12  col-md-12 col-lg-12 margin-tb">

                    @if($message=Session::get('success'))
                    <div class="alert alert-success">
                    <p> {{$message}} </p>
                    </div>
                    <br> <br>

                    
                    @endif
                    </div>
                    <div class="pull-left">
                    <h2> My personal projects list: </h2>
                    </div>
                   </div>

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
                    @foreach(explode(',', $line->images) as $image)
                    <img src="{{URL::to($image)}}" height="550px" width="480px">
                    @endforeach
                     </td>
                    <td><a href="{{ $line->source_code_link }}" > Push </a></td>
                    <td>
                    <a class ="btn btn-info" href="{{URL:: to('show/project/'.$line->id)}}">Show</a>
                    <a class ="btn btn-primary" href="{{URL:: to('edit/project/'.$line->id)}}">Edit </a>
                    <a class ="btn btn-danger" href="{{URL::to('delete/project/'.$line->id)}}" 
                    onclick="return confirm ('Are you sure?')">Delete </a>
                    </td>
                    </tr>
                    @endforeach
                    </table


                    {!! $get_mywork->links() !!}
                    </div>



                </div>
            </div>
        </div>
    </div>
</div>
@endsection

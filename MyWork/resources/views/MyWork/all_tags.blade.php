@extends('layouts.app')

@section('content')
<a  class ="btn btn-primary" href="{{route('create.tag')}}">Add tag </a>
<table class="table table-bordered">
                    <tr>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Action</th>

                    </tr>
                    @foreach($get_tags as $line)
                    <tr>
                    <td>{{ $line->name }}</td>
                    <td><img width="30px" height="30px" src="{{URL::to( $line->image)}}" /></td>
                    <td>
                    <a class ="btn btn-primary" href="{{URL:: to('edit/tag/'.$line->id)}}">Edit </a>
                    <a class ="btn btn-danger" href="{{URL::to('delete/tag/'.$line->id)}}" 
                    onclick="return confirm ('Are you sure?')">Delete </a>
                    </td>
                    @endforeach
</table>
@endsection
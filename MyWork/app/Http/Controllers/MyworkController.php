<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//model
use App\Mywork;
use DB;

class MyworkController extends Controller
{
    public function index(){
        $get_mywork=DB::table('myprojects')->get();


        return view('MyWork.index',compact('get_mywork')); 



    }
    
public function create(){


return view ('MyWork.create');    
}

public function Store(Request $request){


    $data=array();
    $data['name']=$request->name;
    $data['description']=$request->description;
    $data['launch_link']=$request->launch_link;
    $data['source_code_link']=$request->source_code_link;
    $image=$request->file('images');
    if($image){

        $image_name=date('dmy_H_s_i');
        $ext=strtolower($image->getClientOriginalExtension());
        $image_full_name=$image_name.'.'.$ext;
        $upload_path='public/media/';
        $image_url=$upload_path.$image_full_name;
        $success=$image->move($upload_path,$image_full_name);
        $data['images']=$image_url;
        $project=DB::table('myprojects')->insert($data);
        return redirect()->route('MyWork.index')
                        ->with('success','Project created successfully!');

    }
  

}
public function Edit($id){
$project=DB::table('myprojects')->where('id',$id)->first();
return view('MyWork.edit',compact('project'));


}
public function Update(Request $request,$id){
    $oldImage=$request->old_image;
    $data=array();
    $data['name']=$request->name;
    $data['description']=$request->description;
    $data['launch_link']=$request->launch_link;
    $data['source_code_link']=$request->source_code_link;
    $image=$request->file('images');
    if($image){
        if($oldImage){
        unlink($oldImage);
        }
        $image_name=date('dmy_H_s_i');
        $ext=strtolower($image->getClientOriginalExtension());
        $image_full_name=$image_name.'.'.$ext;
        $upload_path='public/media/';
        $image_url=$upload_path.$image_full_name;
        $success=$image->move($upload_path,$image_full_name);
        $data['images']=$image_url;
        $project=DB::table('myprojects')->where('id',$id)->update($data);
        return redirect()->route('MyWork.index')
                        ->with('success','Project updated successfully!');

    }
    




}
public function Delete($id){
//search line 
$data=DB::table('myprojects')->where('id',$id)->first();
//get image adress
$image=$data->images;
if($image){
unlink($image);
}
$project=DB::table('myprojects')->where('id',$id)->delete();
return redirect()->route('MyWork.index')
->with('success','Project delete successfully!');
} 

public function Show($id){

$data=DB::table('myprojects')->where('id',$id)->first();
return view('MyWork.show',compact('data'));


}

}

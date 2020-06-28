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
                        ->with('success','Info about your project : created successfully');

    }
    $data['name']=$request->name;

}


}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\UserSystemInfoHelper;
//model
use App\Mywork;
use DB;

class MyworkController extends Controller
{
    public function index(){
        //insert log 
        $data=array();
        $data['ip']=UserSystemInfoHelper::get_ip();
        $data['browser']=UserSystemInfoHelper::get_browsers();
        $data['device']=UserSystemInfoHelper::get_device();
        $data['os']=UserSystemInfoHelper::get_os();
        $project=DB::table('log_info')->insert($data);
        // get all
        //$get_mywork=DB::table('myprojects')->get();
       //get for pagination
        $get_mywork=DB::table('myprojects')->latest()->paginate(2);
        $images_array[]=array();
        foreach($get_mywork as $line){
        $images["images"]=explode(',', $line->images);
        $images_array['id']=$line->id;
        $images_array['images']=$images["images"];
        }
        return view('MyWork.index',compact('get_mywork','images_array')); 



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
    $countImages=count($request->file('images'));
    $images_url='';
    for($i=0;$i<$countImages;$i++){
        $image=$request->file('images')[$i];
        if($image){
            $image_name=date('dmy_H_s_i').$i;
            $ext=strtolower($image->getClientOriginalExtension());
            $image_full_name=$image_name.'.'.$ext;
            $upload_path='public/media/';
            $images_url=$images_url.$upload_path.$image_full_name.',';
            $success=$image->move($upload_path,$image_full_name);
            

        }
       
    }
    // I remove last character','  from string with multiple images separetes 
    $images_url=mb_substr($images_url, 0, -1); 
    $data['images']=$images_url;
    $project=DB::table('myprojects')->insert($data);
    return redirect()->route('home')
                    ->with('success','Project created successfully!');
    /*
    //for a single image
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
  */

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
    //for a single image
    /*
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
        return redirect()->route('home')
                        ->with('success','Project updated successfully!');

    }
    */
    //for a multiple images make update

    //fist I delete old images
    $images_split=explode(',', $oldImage);
    foreach($images_split as $image){
        if($image){
        unlink($image);
        }
    }
    //insert new images
    $countImages=count($request->file('images'));
    $images_url='';
    for($i=0;$i<$countImages;$i++){
        $image=$request->file('images')[$i];
        if($image){
            $image_name=date('dmy_H_s_i').$i;
            $ext=strtolower($image->getClientOriginalExtension());
            $image_full_name=$image_name.'.'.$ext;
            $upload_path='public/media/';
            $images_url=$images_url.$upload_path.$image_full_name.',';
            $success=$image->move($upload_path,$image_full_name);
            

        }
       

    }
    $images_url=mb_substr($images_url, 0, -1); 
    $data['images']=$images_url;
    $project=DB::table('myprojects')->where('id',$id)->update($data);
        return redirect()->route('home')
                        ->with('success','Project updated successfully!');




}
public function Delete($id){
//search line 
$data=DB::table('myprojects')->where('id',$id)->first();
//get image adress
$images_split=explode(',', $data->images);
foreach($images_split as $image){
if($image){
unlink($image);
}
}
$project=DB::table('myprojects')->where('id',$id)->delete();
return redirect()->route('home')
->with('success','Project delete successfully!');
} 

public function Show($id){

$data=DB::table('myprojects')->where('id',$id)->first();
return view('MyWork.show',compact('data'));


}

}

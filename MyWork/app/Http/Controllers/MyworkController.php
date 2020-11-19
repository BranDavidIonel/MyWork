<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\UserSystemInfoHelper;
//model
use App\MyProject;
use App\Tag;
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
public function create_tag(){
    
    return view ('MyWork.create_tag');    
}
public function create(){
    $tag=Tag::get()->all();

    return view ('MyWork.create',['tags'=>$tag]);    
}
public function Store_tag(Request $request){
    $tag=new Tag();
    $upload_path='public/media/images_tag/';
    $image_name=date('dmy_H_s_i');
    $image=$request->file('image');
    $ext=strtolower($image->getClientOriginalExtension());
    $image_full_name=$image_name.'.'.$ext;
    //upload image
    /*
    var_dump($image_full_name);
    var_dump($request->file('image'));
    exit();
    */
    $success=$image->move($upload_path,$image_full_name);

    $tag->name=$request->tag;
    $tag->image=$upload_path.$image_full_name;

    $tag->save();
    
    return redirect()->route('tags.all');

}

public function Store(Request $request){
    $myprojects=new Myproject();
    $images_url='';
    $countImages=0;
    $myprojects->user_id=1;

    $myprojects->name=$request->name;
    $myprojects->description=$request->description;
    $myprojects->launch_link=$request->launch_link;
    $myprojects->source_code_link=$request->source_code_link;
    
    if($request->file!=null){
    $countImages=count($request->file('images'));
    
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
    $myprojects->images=$images_url;
    }else{
        $myprojects->images=$images_url;
    }
   // dd(request('tags'));
    //exit();
    $myprojects->save();
    $myprojects->tags()->attach(request('tags'));

    //whitout tags to projects
    /*
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
    */
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
       
                        ->with('success','Project created successfully!');

    }
  */
  return redirect()->route('home');

}
public function Edit($id){
//$project=DB::table('myprojects')->where('id',$id)->first();
$project=Myproject::find($id);

$tags_new=Tag::get()->all();
return view('MyWork.edit',compact('project','tags_new'));


}
public function Edit_tag($id){

    $tag=Tag::find($id);
    return view('MyWork.edit_tag',compact('tag'));
}
public function All_Tags(){
    $get_tags=Tag::get()->all();
    //dd($tags);
    //exit();
    return view('MyWork.all_tags',compact('get_tags'));
}
public function Update_tag(Request $request,$id){
    $tag=Tag::find($id);
    //var_dump($id);
    //dd($request->file('image'));
    //exit();
    $oldImage=$request->old_image;
    $image=$request->file('image');
    $tag->name=$request->tag;
    if($image){
        if(file_exists($oldImage)){
        unlink($oldImage);
        }
   
    $image_name=date('dmy_H_s_i');
    $ext=strtolower($image->getClientOriginalExtension());
    $image_full_name=$image_name.'.'.$ext;
    $upload_path='public/media/images_tag/';
    $image_url=$upload_path.$image_full_name;
    $success=$image->move($upload_path,$image_full_name);

    $tag->image=$image_url;
    }
    $tag->save();

        return redirect()->route('tags.all')
                        ->with('success','Project updated successfully!');
}
public function Update(Request $request,$id){
    $oldImage=$request->old_image;
    $data=array();
    //$data['id']=$id;
    $data['name']=''.$request->name;
    $data['user_id']=''.$request->name;
    $data['description']=''.$request->description;
    $data['launch_link']=''.$request->launch_link;
    $data['source_code_link']=''.$request->source_code_link;
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
    $images_url='';
    //check if I insert new images
    if(isset($request->file('images')[0])){
    //first I delete old images
    $images_split=explode(',', $oldImage);
    foreach($images_split as $image){
        if($image){
        unlink($image);
        }
    }
    //insert new images
    $countImages=count($request->file('images'));
    
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
    }else{
        $images_url=$oldImage;

    }
    
    $data['images']=''.$images_url;
    //$project=DB::table('myprojects')->where('id',$id)->update($data);
     $project=Myproject::find($id);
     $project->update($data);
     $project->tags()->sync($request->tags);
     


        return redirect()->route('home')
                        ->with('success','Project updated successfully!');




}
public function Delete_tag($id){
    $tag=Tag::find($id);
    if(file_exists($tag->image)){
        unlink($tag->image);
        }
    $tag->delete();
        return redirect()->route('tags.all')
        ->with('success','Tag delete successfully!');
    
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

$data=Myproject::find($id);
return view('MyWork.show',compact('data'));


}

}

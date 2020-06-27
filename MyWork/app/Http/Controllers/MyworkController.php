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


}

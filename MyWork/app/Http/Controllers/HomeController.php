<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mywork;
use DB;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $get_mywork=DB::table('myprojects')->latest()->paginate(2);

        //return view('MyWork.admin',compact('get_mywork')); 
        return view('home',compact('get_mywork'));
    }
}

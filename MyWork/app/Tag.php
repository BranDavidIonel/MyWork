<?php

namespace App;
use App\Myproject;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    public function myprojects(){
        return $this->belongsToMany(Myproject::class,'myproject_tag');
    }
}

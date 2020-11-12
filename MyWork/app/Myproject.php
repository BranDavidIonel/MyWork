<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Myproject extends Model
{
    protected $fillable = [
        'name', 'descreption', 'launch_link','images','source_code_link',
    ];

    public function users(){
        //return $this->belongsTo(User::class); //user_id implicit
        return $this->belongsTo(User::class,'user_id');
    }
    public function tags(){

        return $this->belongsToMany(Tag::class,'myproject_tag')->withTimestamps();
     
    }
}

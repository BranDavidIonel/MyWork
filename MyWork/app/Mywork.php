<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mywork extends Model
{
    protected $fillable = [
        'name', 'descreption', 'launch_link','images','source_code_link',
    ];
}

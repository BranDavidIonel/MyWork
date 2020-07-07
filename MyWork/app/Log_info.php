<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Log_info extends Model
{
    protected $fillable = [
        'ip', '', 'browser','divice','os',
    ];
}

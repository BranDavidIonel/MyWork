<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\MyProjects;
use Faker\Generator as Faker;

$factory->define(MyProjects::class, function (Faker $faker) {
    return [
        'user_id'=>factory(\App\User::class),
        'name'=>$faker->name,
        'description'=>$faker->sentence,
        'launch_link'=>$faker->name,
        'images'=>$faker->name,
        'source_code_link'=>$faker->name,
        'created_at'=> $faker->time( 'H:i:s', '15:00:00' ),
        'updated_at'=> $faker->time( 'H:i:s', '15:00:00' )
        
    ];
});

<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Nom_region;
use Faker\Generator as Faker;

$factory->define(Nom_region::class, function (Faker $faker) {
    return [
        'description' => $faker->unique()->timezone,
    ];
});

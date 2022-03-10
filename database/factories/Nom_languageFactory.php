<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Nom_language;
use Faker\Generator as Faker;

$factory->define(Nom_language::class, function (Faker $faker) {
    return [
        'description' => $faker->unique()->languageCode,
    ];
});

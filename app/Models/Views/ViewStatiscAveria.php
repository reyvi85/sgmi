<?php

namespace App\Models\Views;

use Illuminate\Database\Eloquent\Model;

class ViewStatiscAveria extends Model
{

    public function scopeYear($query, $year = null)
    {
        $y = (!is_null($year))?$year:date('Y');
        $query->where('anno', $y);
    }
}

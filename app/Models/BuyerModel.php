<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BuyerModel extends Model
{
    protected $table = 'buyers';

    protected $fillable = [
        'name',
        'code',
        'email',
        'address',
    ];
}

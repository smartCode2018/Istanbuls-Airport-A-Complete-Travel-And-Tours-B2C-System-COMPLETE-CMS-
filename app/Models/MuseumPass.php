<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MuseumPass extends Model
{
    use HasFactory;

    protected $fillable = [
        'firstname',
            'lastname',
            'country',
            'pass_type',
            'request_date',
            'gender',
            'phone',
            'email'
    ];
}

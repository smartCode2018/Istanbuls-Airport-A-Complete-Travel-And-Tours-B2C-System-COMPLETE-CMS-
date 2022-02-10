<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CovidPCRTest extends Model
{
    use HasFactory;

    protected $fillable = [
        'firstname',
            'lastname',
            'email',
            'request_date',
            'persons',
            'phone',
            'nationality',
            'passport_number',
            'location'
    ];
}

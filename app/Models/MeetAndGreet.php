<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MeetAndGreet extends Model
{
    use HasFactory;
    protected $filable = [
        'firstname',
            'lastname',
            'country',
            'dept_flight_number',
            'request_date',
            'gender',
            'phone',
            'email',
            'driver_name',
            'driver_phone',
            'adult',
            'kids'
    ];
}

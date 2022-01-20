<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Evisa extends Model
{
    use HasFactory;

    protected $fillable = [
        'firstname',
            'lastname',
            'country_of_birth',
            'place_of_birth',
            'dob',
            'gender',
            'mother_name',
            'father_name',
            'passport_number',
            'passport_issue_date',
            'passport_exp_date',
            'phone',
            'email',
            'address',
            'zipcode'
    ];
}

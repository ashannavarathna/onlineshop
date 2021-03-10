<?php namespace App\Models;

use CodeIgniter\Model;

class userProfileModel extends Model{
    protected $table = 'user_profile';
    protected $allowedFields = ['fname','lname','dob','created_at'];

    protected $beforeInsert = ['beforeInsert'];
    protected $beforeUpdate = ['beforeUpdate'];




}

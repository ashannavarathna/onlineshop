<?php

namespace App\Models;

use CodeIgniter\Model;

class UserProfileImageModel extends Model
{
    protected $table = 'user_profile_image';
    protected $primaryKey = 'iduser_profile_image_model';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = false;

    protected $allowedFields = ['image_id', 'is_current', 'created_at','user_profile_iduser_profile'];

    protected $useTimestamps = false;

    protected $validationRules    = [
        'image_id'     => 'required|alpha_numeric_space|is_unique[user_profile_image.image_id]',
    ];
    protected $validationMessages = [
        'image_id'        => [
            'required' => 'ID field can not be empty.',
            'alpha_numeric_space' => 'ID must be contains only number and letters',
            'is_unique' => 'Sorry. That id has already been registered. Please choose another.',
        ],

    ];
    protected $skipValidation     = false;
}

<?php

namespace App\Models;

use CodeIgniter\Model;

class userAccountModel extends Model
{
    protected $table = 'user_account';
    protected $allowedFields = ['email','password', 'status', 'status_idstatus', 'is_verified', 'verification_code', 'user_profile_iduser_profile', 'user_role_iduser_role'];

    protected $beforeInsert = ['beforeInsert'];
    protected $beforeUpdate = ['beforeUpdate'];

    protected function beforeInsert(array $data)
    {
        $data = $this->passwordHash($data);
    }

    protected function beforeUpdate(array $data)
    {
        $data = $this->passwordHash($data); 
    }

    protected function passwordHash(array $data)
    {
        if (!isset($data['password'])) {
            $data['data']['password'] = password_hash($data['data']['password'], PASSWORD_DEFAULT);
        }

        return $data;
    }
}

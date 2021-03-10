<?php namespace App\Models;

use CodeIgniter\Model;

class loginModel extends Model{
    protected $table = 'login';
    protected $allowedFields = ['login_at','logout_at','is_logged','session_id','cookie_id','user_account_iduser_account','ipv4','ipv6','device_info'];

    protected $beforeInsert = ['beforeInsert'];
    protected $beforeUpdate = ['beforeUpdate'];

}
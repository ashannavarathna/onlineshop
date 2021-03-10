<?php namespace App\Validation;
use App\Models\UserAccountModel;

class CustomRules{
    public function validateUserLogin(string $str, string $fields, array $data){
         $model = new UserAccountModel();
         $userAccount = $model->where('email',$data['usreml'])->first();

         if(!$userAccount)
            return false;

        return password_verify($data['usrpasswrd'],$userAccount['password']);
    }
}

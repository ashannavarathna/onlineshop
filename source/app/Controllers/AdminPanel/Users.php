<?php namespace App\Controllers\AdminPanel;

use App\Controllers\BaseController;

class Users extends BaseController{
    public function index(){
        return view('admin_panel/page_contents/users.php');
    }
    
    
}
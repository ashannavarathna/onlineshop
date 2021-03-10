<?php namespace App\Controllers\AdminPanel;

use App\Controllers\BaseController;

class Dashboard extends BaseController{
    public function index(){
        $data = array(
            'title' => 'DashBoard'
        );
        return view('admin_panel/page_contents/dashboard.php', $data);
    } 
}
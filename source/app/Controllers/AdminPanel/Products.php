<?php namespace App\Controllers\AdminPanel;

use App\Controllers\BaseController;

class Products extends BaseController{
    public function index(){
        $data = Array(
            'title' => 'Product List',
            'message' => 'data'
        );

        #return view('templates/admin_lte/index.html',$data);
        return view('admin_panel/page_contents/product_list.php',$data);
        #
    } 
}
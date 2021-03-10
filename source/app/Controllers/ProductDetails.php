<?php namespace app\Controllers;

use CodeIgniter\Controller;

class ProductDetails extends Controller{
    public function index(){

        $data = [
            'meta_title' => 'product details'
        ];

        echo view('templates/main_header.php',$data);
        echo view('templates/page_header.php');
        echo view('product_details.php');
        echo view('templates/page_footer.php');
        echo view('templates/main_footer.php');
    }
}

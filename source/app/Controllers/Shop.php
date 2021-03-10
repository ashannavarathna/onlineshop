<?php

namespace app\Controllers;

use CodeIgniter\Controller;

class Shop extends Controller
{

    public function index()
    {
        $data = [
            'meta_title' => 'shop'
        ];

        echo view('templates/main_header.php',$data);
        echo view('templates/page_header.php');
        echo view('shop.php');
        echo view('templates/page_footer.php');
        echo view('templates/main_footer.php');
    }
}

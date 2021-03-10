<?php namespace App\Controllers;

class Home extends BaseController
{
	public function index()
	{

		$data = [
            'meta_title' => 'index'
        ];
	
		echo view('templates/main_header.php',$data);
		echo view('templates/page_header.php');
		echo view('index.php');
		echo view('templates/page_footer.php');
		echo view('templates/main_footer.php');
	}

	//--------------------------------------------------------------------

}

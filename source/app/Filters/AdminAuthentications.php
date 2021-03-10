<?php

namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;


class AdminAuthentications implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        $currenturi = service('uri'); //getting current request rul
        $urisegmentcount = $currenturi->getTotalSegments(); //checking for parameters

        if ($urisegmentcount == 1 && strtolower($currenturi->getSegment(1)) == 'admin') {
            //request to admin content
            return redirect()->to('/');
        } elseif ($urisegmentcount > 1 && strtolower($currenturi->getSegment(1)) == 'admin') {
            //request to admin content and  try to access a certain page

            if (!session()->get('userdata')['islogged']) {
                //if user is not an admin
                return redirect()->to('/');
            } elseif (session()->get('userdata')['iduser_role'] <= 1) {
                //if use is an admin
                return redirect()->to('/');
            }
        }
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Do something here
    }
}

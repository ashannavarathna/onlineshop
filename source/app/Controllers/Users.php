<?php

namespace App\Controllers;

use App\Models\UserAccountModel;
use App\Models\UserProfileImageModel;
use App\Models\UserProfileModel;
use CodeIgniter\Controller;

class Users extends Controller
{

    public function index()
    {
        //tempory
        return redirect()->to('/');
    }


    //call the user signin form
    public function getUserSignInForm()
    {
        if (session()->get('userdata')['islogged']) {
            return redirect()->to('/');
        }

        //getting form helps
        $data = [];
        if ($this->request->getMethod() == 'post') {

            $errors = [
                'usrpasswrd' => [
                    'validateUserLogin' => 'email or password is incorrect'
                ]
            ];


            $rules = [
                'usreml' => [
                    'label'  => 'Email',
                    'rules'  => 'required|valid_email',
                ],
                'usrpasswrd' => [
                    'label'  => 'Password',
                    'rules'  => 'required|validateUserLogin[usreml,usrpasswrd]',
                ]
            ];

            if (!$this->validate($rules, $errors)) {
                $data['validation'] = $this->validator;
            } else {
                $useracmodel = new UserAccountModel();
                $userProfileModel = new UserProfileModel();
                $userProfileImageModel = new UserProfileImageModel();
                

                //get current user profile
                $useraccount = $useracmodel->where('email', $this->request->getVar('usreml'))->first();
                $userprofile = $userProfileModel->where('iduser_profile', $useraccount['user_profile_iduser_profile'])->first();
                $userprofileimage = $userProfileImageModel->where('user_profile_iduser_profile', $userprofile['iduser_profile'])->first();
                //save login history


                //setup session
                $userdata = [
                    'iduser_account' => $useraccount['iduser_account'],
                    'fname' => $userprofile['fname'],
                    'lname' => $userprofile['lname'],
                    'email' => $useraccount['email'],
                    'iduser_role' =>$useraccount['user_role_iduser_role'],
                    'profile_image_id'=> $userprofileimage['image_id'],
                    'islogged' => 'true'
                ];
                session()->set('userdata', $userdata);
                return redirect()->to('/');
            }
        }


        $data['meta_title'] = 'sign in';
        echo view('templates/main_header.php', $data);
        echo view('signin.php');
        echo view('templates/main_footer.php');
    }

    //call the user signup form
    public function getUserSignUpForm()
    {

        if (session()->get('userdata')['islogged']) {
            return redirect()->to('/');
        }


        $data = [
            'meta_title' => 'sign up'
        ];

        echo view('templates/main_header.php', $data);
        echo view('signup.php');
        echo view('templates/main_footer.php');
    }



    public function getUserSignOut()
    {
        session()->remove('userdata');
        return redirect()->to('/');
    }
}

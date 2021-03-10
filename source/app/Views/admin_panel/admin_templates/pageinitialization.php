<?php
#USER OBJECT VALIDATION
if(!session()->get('userdata')['islogged'] || session()->get('userdata')['iduser_role'] <= 1){
    //if user not logged in or not a admin account
    return redirect()->to('/');
}





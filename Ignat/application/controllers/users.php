<?php
class Users extends CI_Controller 
{
    public function index($n = 0)
	{
		if($n != 0) {
            $this->load->model('users_model');
            $data['users'] = $this->users_model->get_user($n);
            $data['title'] = 'All users';
            $this->load->view('users_view', $data);
		}
		else{			
            $this->load->model('users_model');
            $data['users'] = $this->users_model->get_users();
            $data['title'] = 'All users';
            $this->load->view('users_view', $data);
        }
	}


}
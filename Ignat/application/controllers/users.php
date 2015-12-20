<?php
class Users extends CI_Controller 
{
    public function users_view()
	{
        $this->load->model('users_model');
        $data['users'] = $this->users_model->get_users();
        $data['title'] = 'All users';
        $this->load->view('users_view', $data);
	}


}
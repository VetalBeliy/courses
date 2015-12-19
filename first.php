<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class First extends CI_Controller {

	public function index()
	{
		$this->load->view('hello_view');
	}

	function about($id) 
	{
		$data['name'] = "Алёна";
		$data['surname'] = "Verzina";
		$data['age'] = 28;
		$this->load->view('about_view', $data);
		if ($id = 1) {
			echo "Func_param";
		}
	}

    function course()
    {
        $this->load->model('Course_model');
        $data['Course'] = $this->Course_model->get_course_all();
        $this->load->view('course_view', $data);
    }
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Teacher extends CI_Controller {

	function teachers()
	{
		$this->load->model('teachers_model');
		$data['teachers'] = $this->teachers_model->get_teachers();
		$this->load->view('teachers_view', $data);
	}

}

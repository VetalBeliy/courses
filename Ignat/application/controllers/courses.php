<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Courses extends CI_Controller {

    public function index($n = 0)
    {
        if($n != 0) {
        $this->load->model('courses_model');
        $data['courses'] = $this->courses_model->get_course($n);
        $this->load->view('courses_view', $data);
        }
        else {
            $this->load->model('courses_model');
            $data['courses'] = $this->courses_model->get_courses_all();
            $this->load->view('courses_view', $data);
        }
    }
}

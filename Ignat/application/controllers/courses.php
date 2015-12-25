<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Courses extends CI_Controller {

    public function courses_all_view()
    {
        $this->load->model('courses_model');
        $data['courses'] = $this->courses_model->get_courses_all();
        $this->load->view('courses_view', $data);
    }

        public function course_view($n)
    {
        $this->load->model('courses_model');
        $data['courses'] = $this->courses_model->get_course($n);
        $this->load->view('courses_view', $data);
    }
}

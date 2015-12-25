<?php

class Teacher extends CI_Controller {

   function teachers_all_view()
    {
        $this->load->model('teachers_model');
        $data['teachers'] = $this->teachers_model->get_all_teachers();
        $this->load->view('teachers_view', $data);
    }

    function teachers_view($n)
    {
        $this->load->model('teachers_model');
        $data['teachers'] = $this->teachers_model->get_teachers($n);
        $this->load->view('teachers_view', $data);
    }

}

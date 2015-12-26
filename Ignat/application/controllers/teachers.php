<?php

class Teachers extends CI_Controller {

    public function index($n = 0)
    {
        if($n != 0) {
        $this->load->model('teachers_model');
        $data['teachers'] = $this->teachers_model->get_teachers($n);
        $this->load->view('teachers_view', $data);
        }

    else{
        $this->load->model('teachers_model');
        $data['teachers'] = $this->teachers_model->get_all_teachers();
        $this->load->view('teachers_view', $data);
        }
    }

}

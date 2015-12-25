<?php

 class Teacher extends CI_Controller {

   function teachers_view()
    {
        $this->load->model('teachers_model');
        $data['teachers'] = $this->teachers_model->get_teachers();
        $this->load->view('teachers_view', $data);
    }

}
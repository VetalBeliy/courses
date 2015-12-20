<?php
class Comments extends CI_Controller 
{
    public function comments_view()
	{
        $this->load->model('comments_model');
        $data['comments'] = $this->comments_model->get_comments();
        $data['title'] = 'Отзывы';
        $this->load->view('comments_view', $data);
	}


}
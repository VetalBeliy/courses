<?php
class Lessons extends CI_Controller 
{
    public function lessons_all_view()
	{
		$config['base_url'] = base_url().'index.php/lessons/lessons_all_view';
		$config['total_rows'] = $this->db->count_all('lessons');
		$config['per_page'] = '10';
		$config['full_tag_open'] = '<p style="text-align: center;">';
		$config['full_tag_close'] = '</p>';

		$this->pagination->initialize($config);

		$this->load->model('lessons_model');
        $data['lessons'] = $this->lessons_model->get_all_lessons($config['per_page'],$this->uri->segment(3));
        $data['mark'] = 1;
        $this->load->view('lessons_view', $data);
        
        $data['title'] = 'Уроки';
	}
    
    public function lesson_view($n)
	{
        $data['title'] = 'Уроки';

		$this->load->model('lessons_model');
    
        $data['lessons'] = $this->lessons_model->get_lesson($n);
        $data['mark'] = 0;
        $this->load->view('lessons_view', $data);
	}

}
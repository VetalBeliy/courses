<?php
class Comments extends CI_Controller 
{
	public function index($id = 0)
	{
		$this->load->model('comments_model');
		$data['comments'] = $this->comments_model->get_comments($id);
		$data['title'] = 'Отзывы';
		$this->load->view('comments_view', $data);
	}

	public function comments_add()
	{
		$this->load->helper('form');
		$this->load->model('comments_model');
		$data['course_teacher'] = $this->comments_model->get_all_courses_teachers();
		$this->load->view('comments_add_view', $data);
	}	

	public function added()
	{
		$user_name = $this->input->post('UserName');
		$course_name = $this->input->post('CourseName');
		$teacher_name = $this->input->post('TeacherName');
		$text_review = $this->input->post('TextReview');
		$data['user_id'] = $user_name;
		$data['course_id'] = $course_name + '1';
		$data['teacher_id'] = $teacher_name + '1';
		$data['text_review'] = $text_review;

		$this->load->model('comments_model');
		$this->comments_model->add_comments($data);
		$this->load->view('comments_added_view');
	}
}
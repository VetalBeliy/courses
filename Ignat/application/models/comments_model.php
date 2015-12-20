<?php defined('BASEPATH') OR exit('No direct script access allowed');

	class Comments_model extends CI_Model 
	{

        public function get_comments()
		{
            $this->db->select('users.name as user_name, course_name, teachers.name as teacher_name, comments.created, text_review');
            $this->db->from('comments');
            $this->db->join('users', 'users.id = comments.user_id', 'left');
            $this->db->join('course', 'course.id = comments.course_id', 'left');
            $this->db->join('teachers', 'teachers.id = comments.teacher_id', 'left');
            $query = $this->db->get();
            return $query->result_array();
		}
	}
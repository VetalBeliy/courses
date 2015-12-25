<?php defined('BASEPATH') OR exit('No direct script access allowed');

	class Comments_model extends CI_Model 
	{

        public function get_comments()
		{
            $this->db->select('users.name as user_name, users.avatar as user_avatar, course_name, teachers.name as teacher_name, comments.created, text_review');
            $this->db->from('comments');
            $this->db->join('users', 'users.id = comments.user_id', 'left');
            $this->db->join('courses', 'courses.id = comments.course_id', 'left');
            $this->db->join('teachers', 'teachers.id = comments.teacher_id', 'left');
            $query = $this->db->get();
            return $query->result_array();
		}

        public function get_all_courses_teachers()
        {
            $this->db->select('courses.course_name, teachers.name');
            $this->db->from('courses, teachers');
            $query = $this->db->get();
            return $query->result_array();
        }

        public function add_comments($data)
        {
            $this->db->insert('comments', $data);
        }
	}
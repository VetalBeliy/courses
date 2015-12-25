<?php defined('BASEPATH') OR exit('No direct script access allowed');

	class Lessons_model extends CI_Model 
	{

        public function get_lesson($n)
		{
            $this->db->select('*');
            $this->db->from('lessons');
            $this->db->where("lessons.course_id=$n");
            $this->db->join('courses', 'courses.id = lessons.course_id');
        
            $query = $this->db->get();
            return $query->result_array();
		}

        public function get_all_lessons($num, $offset)
        {
            $this->db->select('*');
            $this->db->from('lessons');
            $this->db->join('courses', 'courses.id = lessons.course_id');

            $query = $this->db->get('', $num, $offset);
            return $query->result_array();
        }
	}
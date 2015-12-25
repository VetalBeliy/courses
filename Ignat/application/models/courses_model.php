<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Courses_model extends CI_Model {

    function get_courses_all()
    {
       // $this->db->order_by('id','desc');
        $this->db->select('*');
        $this->db->from('courses');
        $this->db->join('teachers', 'teachers.id = courses.teacher_id');
        $query = $this->db->get();
        return $query->result_array();
    }

        function get_course($nu)
    {
        $this->db->select('*');
        $this->db->from('courses');
        $this->db->where("courses.id=$nu");
        $this->db->join('teachers', 'teachers.id = courses.teacher_id');
        $query = $this->db->get();
        return $query->result_array();
    }


}

//nnn
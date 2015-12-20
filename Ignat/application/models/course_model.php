<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Course_model extends CI_Model {

    function get_course_all()
    {
        // $this->db->order_by('id','random');
        // $query = $this->db->get('Course');
        // return $query->result_array();

        $this->db->select('*');
        $this->db->from('Course');
        $this->db->join('teachers', 'teachers.id = Course.teacher_id');
        $query = $this->db->get();
        return $query->result_array();
    }


}

//nnn
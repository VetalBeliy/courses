<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Teachers_model extends CI_Model {

	function get_all_teachers() {
		$this->db->select('*');
		$this->db->from('teachers');
		$query = $this->db->get();
		return $query->result_array();
	}

	function get_teachers($n) {
		$this->db->select('*');
		$this->db->from('teachers');
		$this->db->where("teachers.id=$n");
		$query = $this->db->get();
		return $query->result_array();
	}

}

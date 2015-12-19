<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Teachers_model extends CI_Model {

	function get_teachers()
	{
		$query = $this->db->get('teachers');
		return $query->result_array();
	}

}

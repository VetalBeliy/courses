<?php defined('BASEPATH') OR exit('No direct script access allowed');

	class users_model extends CI_Model 
	{

        public function get_users()
        {
            $query = $this->db->get('users');
            return $query->result_array();
        }

		public function get_user($nu)
        {
            $this->db->select('*');
            $this->db->from('users');
            $this->db->where("users.id=$nu");

            $query = $this->db->get();
            return $query->result_array();
        }
	}

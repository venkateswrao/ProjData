<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User_model extends CI_Model {
    
    public function __construct()
    {
        parent::__construct();
    }
function add_users($data){
	
	$status=$this->db->insert('cust_data',$data);
	return $status;
}
function check_user($email,$pass){
	$query=$this->db->get_where('cust_data',array('email'=>$email,'pass'=>$pass));
	if($query->num_rows()>0){
		$data=$query->result_array();
	
	return $data;
	}
}

}
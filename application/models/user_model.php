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

function edit_profile($id){
$query1=$this->db->get_where('cust_data',array('id'=>$id));
$data1=$query1->result_array();

return $data1;
}
function edit_user(){
	
	 $data1['id']=$this->input->post('id');
     $data1['fname']=$this->input->post('fname');
	 $data1['lname']=$this->input->post('lname');
	 $data1['email']=$this->input->post('email');
	 $data1['phoneno']=$this->input->post('phno');
	 $data1['pass']=$this->input->post('rpwd');
	
	
	$data=array('fname'=>$data1['fname'],
	             'lname'=>$data1['lname'],
	              'email'=>$data1['email'],
	              'pass'=>$data1['pass'],
                   'phoneno'=>$data1['phoneno']);
	$this->db->where('id',$data1['id']);
	$this->db->update('cust_data',$data);
	return true;
	
}
function user($id){
	$query=$this->db->get_where('cust_data',array('id'=>$id));
	
	//$this->db->get('cust_data');
	//return $query->resut_array();
	$data=$query->result_array();
	return $data;
	
	
}
function delete_user($id){
	$rq=$this->db->delete('cust_data',array('id'=>$id));
	return true;
}
function getdata($serch){
	if(isset($serch['fname']) && ($serch['location'])&&($serch['lname'])){
		$query=$this->db->get_where('cust_data',array('fname'=>$serch['fname'],'lname'=>$serch['lname'],'location'=>$serch['location']));
	}else
	 {
		$this->db->where('fname=',$serch['fname']);
		$this->db->or_where('lname=',$serch['lname']);
		$this->db->or_where('location=',$serch['location']);
		$query=$this->db->get('cust_data');
		
	}
	$f=$query->result_array();
	return $f;
}
}
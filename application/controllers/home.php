
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller{
	
	function __construct(){
		//$this->load->helper(array('form', 'url'));
		parent::__construct();
		
	
		
		$this->load->model('user_model');
		
		
	}

function index(){
	if($this->session->userdata('username')){
		
		$data['sessiondata']=$this->session->userdata('username');
		$this->load->view('userdashboard',$data);
	}else 
	{
		
		$this->load->view('templet');
	}
	
 	}
 	function registration(){
 		$this->load->view('registration');
 	}

 	function getdetails(){
 		$data['fname']=$this->input->post('fname');
 		$data['lname']=$this->input->post('lname');
 		$data['email']=$this->input->post('email');
 		$data['pass']=$this->input->post('pass');
 		$data['birthdate']=$this->input->post('date');
 		$data['gender']=$this->input->post('gender');
 		$data['phoneno']=$this->input->post('phno');
 		$data['location']=$this->input->post('country');
 		$config['upload_path']='./uploads/';
 		$config['allowed_types']='gif|jpg|png';
 		$config['max_size']='1000KB';
 		$config['max_width']='1024';
 		$config['max_height']='768';
 		$this->load->library('upload',$config);
 		
 		if(! $this->upload->do_upload('pic')){
 			echo "error";
 		}
 		else{
 		$data1=array('upload_data'=>$this->upload->data());
 		
 		$data['pic'] = 'http://localhost/CIexample/uploads/'.$data1['upload_data']['orig_name'];
 		
 		
 		 
 		
 		}
 	$query=$this->user_model->add_users($data);
 		if($query){
 			$this->load->view('thankyou');
 		}	
 		else
 		{
 			$this->load->view('error');
 		}
 			
 	}
 	function log_in(){
 		$this->load->view('login');
 	}
 	function checkuser(){
 		$email=$this->input->post('email');
 		$pass=$this->input->post('pwd');
 		$user=$this->user_model->check_user($email,$pass);
 		if($user){
 			$sess_data=array();
 			foreach ($user as $row)
 			{
 				$sess_data=array('id'=>$user[0]['id'],
 				                  'fname'=>$user[0]['fname'],
 				                  'email'=>$user[0]['email'],
 				                  'pass'=>$user[0]['pass']);
 				$this->session->set_userdata('username',$sess_data);
 				$this->load->view('userdashboard');
 			}
 			
 		}else{
 			$data['error']="invalid Username or Password ";
 			$this->load->view('login',$data);
 		}		
 		}
 		function logout(){
 			$this->session->sess_destroy();
 			
 			$this->load->view('login');
 		}
 	function editprofile($id){
 		$d1['res']=$this->user_model->edit_profile($id);
 		$this->load->view('profile',$d1);
 	}
 	function getprofile(){
  $q=$this->user_model->edit_user();
  if($q){
  	$this->load->view('userdashboard');
  }
 	}
 	function user($id){
 		$q['user']=$this->user_model->user($id);
 		$this->load->view('displayuser',$q);
 	}
 	function dashboard(){
 		$this->load->view('userdashboard');
 	}
 	function deleteuser($id){
 		$q=$this->user_model->delete_user($id);
 		if($q){
 			$this->session->sess_destroy();
 			
 			redirect('home','refresh');
 		}
 	}
 	function search(){
 		$this->load->view('search');
 	}
 	function searchdetails(){
 		$serch['lname']=$this->input->post('lname');
 		$serch['location']=$this->input->post('city');
 		$serch['fname']=$this->input->post('fname');
 		$q['res']=$this->user_model->getdata($serch);
 		$this->load->view('searchdata',$q);
 	}
}
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User_model extends CI_Model {
    
    public function __construct()
    {
        parent::__construct();
    }
	function login($email,$password)
    {
		$this->db->where("email",$email);
        $this->db->where("password",$password);
            
        $query=$this->db->get("user");
        if($query->num_rows()>0)
        {
         	foreach($query->result() as $rows)
            {
            	//add all data to session
                $newdata = array(
                	   	'user_id' 		=> $rows->id,
                    	'user_name' 	=> $rows->username,
		                'user_email'    => $rows->email,
	                    'logged_in' 	=> TRUE,
                   );
			}
            	$this->session->set_userdata($newdata);
                return true;            
		}
		return false;
    }
	public function add_user()
	{
		$data=array(
			'username'=>$this->input->post('user_name'),
			'email'=>$this->input->post('email_address'),
			'password'=>md5($this->input->post('password'))
			);
		$this->db->insert('user',$data);
	}
        
        public function getData($id)
	{
		 $data = $this->db->get_where('user',array('id' => $id));
                 //print_r($data);
                 return $data1 = $data->result_array();
	}
         public function editData($uname,$id)
	{
		 
                 $data = array(
               'id' => $id,
               'username' => $uname);

$this->db->where('id', $id);
$this->db->update('user', $data); 

	}
         public function edituname($id)
	{
		 $data = $this->db->get_where('user',array('id' => $id));
                 //print_r($data);
                 return $data1 = $data->result_array();

	}
}
?>
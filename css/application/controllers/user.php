<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User extends CI_Controller{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
	}
	public function index()
	{
		if(($this->session->userdata('user_name')!=""))
		{
			$this->welcome();
		}
		else{
			$data['title']= 'Home';
			$this->load->view('header_view',$data);
			$this->load->view("registration_view.php", $data);
			$this->load->view('footer_view',$data);
		}
	}
	public function welcome()
	{
             $id=$this->session->userdata('user_id');
             $userdata['user']= $this->user_model->getData($id);
		$userdata['title']= 'Welcome';
		$this->load->view('header_view');
		$this->load->view('welcome_view',$userdata);
		//$this->load->view('footer_view');
	}
        public function edit_user()
	{
            $id=$this->session->userdata('user_id');
             $userdata['uname']= $this->user_model->edituname($id);
		//$this->load->view('header_view');
		$this->load->view('edit_user',$userdata);
		//$this->load->view('footer_view');
         }
        public function edit()
        {
            $uname=$this->input->post('uname');
             $id=$this->input->post('id');
            $result=$this->user_model->editData($uname,$id);
		if($result) $this->welcome();
		else        $this->index();
        }
	public function login()
	{
		$email=$this->input->post('email');
		$password=md5($this->input->post('pass'));

		$result=$this->user_model->login($email,$password);
		if($result) $this->welcome();
		else        $this->index();
	}
      
	public function thank()
	{
		$data['title']= 'Thank';
		$this->load->view('header_view',$data);
		$this->load->view('thank_view.php', $data);
		$this->load->view('footer_view',$data);
	}
	public function registration()
	{
		$this->load->library('form_validation');
		// field name, error message, validation rules
		$this->form_validation->set_rules('user_name', 'User Name', 'trim|required|min_length[4]|xss_clean');
		$this->form_validation->set_rules('email_address', 'Your Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[4]|max_length[32]');
		$this->form_validation->set_rules('con_password', 'Password Confirmation', 'trim|required|matches[password]');

		if($this->form_validation->run() == FALSE)
		{
			$this->index();
		}
		else
		{
			$this->user_model->add_user();
			$this->thank();
		}
	}
	public function logout()
	{
		$newdata = array(
		'user_id'   =>'',
		'user_name'  =>'',
		'user_email'     => '',
		'logged_in' => FALSE,
		);
		$this->session->unset_userdata($newdata );
		$this->session->sess_destroy();
		$this->index();
	}
        
        
        /*function sendMail()
        {
            $config = Array(
            'protocol' => 'smtp',
             'smtp_host' => 'ssl://smtp.googlemail.com',
             'smtp_port' => 465,
             'smtp_user' => 'xxx@gmail.com', // change it to yours
             'smtp_pass' => 'xxx', // change it to yours
             'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE
        );

        $message = '';
        $this->load->library('email', $config);
      $this->email->set_newline("\r\n");
      $this->email->from('xxx@gmail.com'); // change it to yours
      $this->email->to('xxx@gmail.com');// change it to yours
      $this->email->subject('Resume from JobsBuddy for your Job posting');
      $this->email->message($message);
      if($this->email->send())
     {
      echo 'Email sent.';
     }
     else
    {
     show_error($this->email->print_debugger());
    }

}*/
           
}
?>
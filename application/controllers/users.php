<?php

class users extends CI_Controller 
{
    public function __construct() {
        parent:: __construct();
        $this->load->helper("url");
       $this->load->model("usermodel");
      $this->load->library("pagination");
    }
   function index(){
   
   $this->example1();
   }
    function example1() {
	
	
	
        $config = array();
        $config["base_url"] = base_url() . "users/example1";
		
		
        $config["total_rows"] = $this->usermodel->record_count();
        $config["per_page"] = 1;
        $config["uri_segment"] = 3;
      $config['next_link'] = '&gt;';
      $config['next_tag_open'] = '<div>Next';
      $config['next_tag_close'] = '</div>';
        $config['prev_link'] = '&lt;';
        $config['prev_tag_open'] = '<div>Prev';
        $config['prev_tag_close'] = '</div>';
        $this->pagination->initialize($config);
 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data["results"] = $this->usermodel->
            fetch_countries($config["per_page"], $page);
        $data["links"] = $this->pagination->create_links();
 
        $this->load->view("display", $data);
    }
}
?>
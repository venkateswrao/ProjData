<?php 
class Hall extends CI_Controller
{
 public function __construct()
 {
	parent::__construct();
	$this->load->model('hall_model');
 }
 public function add_hall()
 {
     $data['hall']='Add Hall Details ';
     $this->load->view('add_hall');
 }
 public function add()
 {
     $hall=$this->input->post('hall');
     $city=$this->input->post('city');
    $this->load->model('hall_model');
    $result=$this->hall_model->add_data($hall,$city);
    if($result)
        $this->result();
     // $this->load->model('hall_model');
      //$this->hall_model->add_hall();
  }
  public function result()
  {
      $this->load->view('success');
  }
  public function edit_hall()
  {
      $res['title']= 'Edit Details';
     // $this->load->view('halledit',$userdata);
      $res['halls']=$this->hall_model->gethalldata();
      $this->load->view('halledit',$res);
          
  }
  public function new_hall($id)
  {
            //$id=$this->$id;
             $halledit['hall']= $this->hall_model->newhalldata($id);
		//$this->load->view('header_view');
		$this->load->view('new_hall',$halledit);
		//$this->load->view('footer_view');
        
  }
  public function updatehall()
  {
      $id=$this->input->post('id');
      $hall=$this->input->post('hall');
      $city=$this->input->post('city');
      $this->hall_model->updatehall($id,$hall,$city);
     $this->edit_hall();
      //require('user.php');
      //$edit=new User();
     // $edit->edit();
      //$this->edit();
  }
   public function delete_hall($id)
  {
            //$id=$this->$id;
             $halledit['hall']= $this->hall_model->delete_hall($id);
		//$this->load->view('header_view');
		//$this->load->view('new_hall',$halledit);
		//$this->load->view('footer_view');
             $this->edit_hall();
        
  }
}
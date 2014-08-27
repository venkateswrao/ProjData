<?php
class Imgupload extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function insert_image($data)
    {
        $data=array(
            'imgpath'=>'uploads/'.$data['file_name'],
            );
        $this->db->insert('imgupload',$data);
        return true;
    // echo "<pre>";
    // print_r($data);
   //exit;
       //$this->db->insert('imgupload',$path);
    }
    public function imgdisplay()
    {
       $im=$this->db->get('imgupload');
        return $data1 = $im->result_array();  
    }
}
?>
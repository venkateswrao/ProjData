<?php 
class Hall_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function add_data($hall,$city)
    {
        $data=array(
            'hall'=>$hall,
            'city'=>$city);
        $this->db->insert('hall_details',$data);
        return true;
    }
    public function gethalldata()
    {
        $data = $this->db->get('hall_details');
       
       return $data1 = $data->result_array();  
        
    }
    public function newhalldata($id)
    {
    $data = $this->db->get_where('hall_details',array('id' => $id));
                 //print_r($data);
     return $data1 = $data->result_array();
    }
    public function updatehall($id,$hall,$city)
    {
        $data=array(
            'id'=>$id,
            'hall'=>$hall,
            'city'=>$city
        );
        $this->db->where('id',$id);
        $this->db->update('hall_details',$data);
    }
    public function delete_hall($id)
    {
        $this->db->delete('hall_details', array('id' => $id)); 
    }
}
?>

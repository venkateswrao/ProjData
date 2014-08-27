<?php
class Usermodel extends CI_Model
{
    public function __construct() {
        parent::__construct();
    }
 
    public function record_count() {
	
	//$q=$this->db->get("country");
	//$m=$q->num_rows();
	
	//return $m;
       return $this->db->count_all("empdata");
    }
 
    public function fetch_countries($limit, $start) {
        $this->db->limit($limit, $start);
        $query = $this->db->get("empdata");
 
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
   }
}
?>
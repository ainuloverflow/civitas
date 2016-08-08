<?php 
namespace Models;
use Resources;

class Administrator {
    
    public function __construct(){
		// DB koneksi default
		$this->db = new Resources\Database;
    }

    public function edituser($value, $where) {
        $this->db->update('radcheck', $value, $where);
    }

    public function updateprofil($value, $where) {
        $updateprofil=$this->db->update('radcheck', $value, $where);
        Return $updateprofil;
    }

    public function getadministratorId($value) {
        Return $this->db->row("SELECT * FROM radcheck WHERE level = 1 AND id = $value");
    }
}

<?php 
namespace Models;
use Resources;

class Manajemen_adminfakultas {
    
    public function __construct(){
		// DB koneksi default
		$this->db = new Resources\Database;
    }

    public function readAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 2 ORDER BY id");
    }

    public function getadminId($value) {
        Return $this->db->row("SELECT * FROM radcheck WHERE level = 2 AND id = $value");
    }

    public function totaladminfakultas() {
        Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 2");
    }

    public function tambahuser($value) {
        $this->db->insert("radcheck", $value);
    }
    
    public function updateprofil($value, $where) {
        $updateprofil=$this->db->update('radcheck', $value, $where);
        Return $updateprofil;
    }

    public function edituser($value, $where) {
        $this->db->update('radcheck', $value, $where);
    }

    public function hapususer($where) {
         $this->db->delete('radcheck', $where);
    }

    public function getByUsername($value) {
        Return $this->db->results("SELECT username FROM radcheck WHERE username = '$value'");        
    }

    public function getByEmail($value) {
        Return $this->db->results("SELECT email FROM radcheck WHERE email = '$value'");        
    }

    public function getByHP($value) {
        Return $this->db->results("SELECT no_telp FROM radcheck WHERE no_telp = '$value' ");        
    }
}

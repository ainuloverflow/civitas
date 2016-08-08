<?php 
namespace Models;
use Resources;

class Civitas {
    public function __construct() {
        $this->db = new Resources\Database;
    }
    public function _edit_profil_civitas($id){
        return $this->db->row("SELECT * FROM permanent_users WHERE id = $id");
    }
    
    public function updateprofil($editprofil, $where){
        return $this->db->update('permanent_users', $editprofil, $where);
    }
    
    public function update_password_hotspot($value, $where){
        return $this->db->update('permanent_users', $value, $where);
    }
}
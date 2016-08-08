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
}

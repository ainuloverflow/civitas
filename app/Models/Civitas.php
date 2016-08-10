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
    
    public function update_password_permanent_users($value_permanent_users, $where_id_permanent_users){
        return $this->db->update('permanent_users', $value_permanent_users, $where_id_permanent_users);  
    }
    
    public function update_password_hotspot($username, $password) {
        $radcheck = new Tb_with_many_relation();
        $radcheck->value = $password;
        $radcheck->condition('username', '=', $username, 'AND');
        $radcheck->condition('attribute', '=', 'Cleartext-Password');
        return $hasil = $radcheck->update();
    }
    
    public function update_password_civitas($value_permanent_users, $where_id_permanent_users) {
        return $this->db->update('permanent_users', $value_permanent_users, $where_id_permanent_users);
    }
    
    public function cek_pass_civitas($value, $id, $username) {
        return $this->db->row("SELECT password_civitas FROM permanent_users WHERE password_civitas = '$value' AND id = $id AND username = '$username'");
    }
}
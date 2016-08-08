<?php 
namespace Models;
use Resources;

class Login {
    public function __construct() {
        $this->db = new Resources\Database;
    }
    
    public function login($username, $password) {
        return $login = $this->db->row("SELECT * FROM permanent_users WHERE username = '$username' AND password_civitas = '$password' ");
    }
}

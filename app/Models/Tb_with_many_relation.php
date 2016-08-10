<?php
namespace Models;
use Resources;

class Tb_with_many_relation extends Resources\ActiveRecord {
    
    public function __construct(){
        call_user_func_array( 'parent::__construct', func_get_args() );
	$this->table = 'radcheck';   
    }
}

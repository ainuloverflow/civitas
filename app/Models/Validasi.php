<?php
namespace Models;
use Resources;

class Validasi extends Resources\Validation {

    public function __construct()
    {
        parent::__construct();

        $this->civitas = new Civitas;
        $this->session = new Resources\Session();
        
        $this->setRuleErrorMessages(
            array(
                'compare' => '%label% tidak sama dengan %comparatorLabel%',
                'required' => '%label% tidak boleh kosong', 
                'email' => '%label% harus berformat email',
                'numeric' => '%label% harus berformat angka',
                'min' => 'Jumlah karakter %label% yang diberikan minimal berjumlah %size%',
                'max' => '%label% jumlah karakter yang diberikan maksimal berjumlah %size%',
            )
        );  
    }

    public function setRules()
    {
        return array(
            
            'id' => array(
                'rules' => array(
                    'required'
                ),
                'label' => 'ID'
            ),
            
            'name' => array(
                'rules' => array(
                    'required'
                ),
                'label' => 'Nama',
                'filter' => array('trim')
            ),
            
            'email' => array(
                'rules' => array(
                    'required',
                    'email'
                ),
                'label' => 'Email',
                'filter' => array('trim')
            ),
            
            'phone' => array(
                'rules' => array(
                    'required',
                    'numeric'
                ),
                'label' => 'Nomor HP',
                'filter' => array('trim')
            ),
            
            'address' => array(
                'rules' => array(
                    'required',
                ),
                'label' => 'Alamat',
                'filter' => array('trim')
            ),
            
            'password_civitas' => array(
                'rules' => array(
                    'required',
                    'callback' => 'cek_password_civitas'
                ),
                'label' => 'Password Civitas',
                'filter' => array('trim')
            ),
            
            'password' => array(
                'rules' => array(
                    'required',
                    'min' => 8,
                ),
                'label' => 'Password',
                'filter' => array('trim')
            ),

            'konfirmasi_password' => array(
                'rules' => array(
                    'required',
                    'compare' => 'password'
                ),
                'label' => 'Konfirmasi Password',
                'filter' => array('trim')
            ),
            
            'password_civitas_lama' => array(
                'rules' => array(
                    'required',
                    'callback' => 'cek_password_civitas'
                ),
                'label' => 'Password Civitas Lama',
                'filter' => array('trim')
            ),
            
            'password_civitas_baru' => array(
                'rules' => array(
                    'required',
                    'min' => 8,
                ),
                'label' => 'Password Civitas Baru',
                'filter' => array('trim')
            ),
                
            'konfimasi_password_civitas_baru' => array(
                'rules' => array(
                    'required',
                    'compare' => 'password_civitas_baru'
                ),
                'label' => 'Konfirmasi Password Civitas Baru',
                'filter' => array('trim')
            )
        );
    }
    public function cek_password_civitas($field, $value, $label)
    {
        $id = $this->session->getValue('id');
        $username = $this->session->getValue('username');
        if($hasil = $this->civitas->cek_pass_civitas(md5($value), $id, $username)) {
            return true;
        }
        else {
            $this->setErrorMessage($field, 'Password Civitas yang anda masukan tidak cocok dengan '.$label.' Anda saat ini');
            return false;
        }
    }
}

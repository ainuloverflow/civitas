<?php
namespace Models;
use Resources;

class Validasi extends Resources\Validation {

    public function __construct()
    {
        parent::__construct();

        $this->cekmember = new \Models\Manajemen_member;
        
        $this->setRuleErrorMessages(
            array(
                'required' => '%label% tidak boleh kosong', 
                'email' => '%label% harus berformat email',
                'numeric' => '%label% harus berformat angka',
                'min' => '%label% jumlah karakter yang diberikan minimal berjumlah %size%',
                'max' => '%label% jumlah karakter yang diberikan maksimal berjumlah %size%',
            )
        );  
    }

    public function setRules()
    {
        return array(
            
            'id' => array( // Filter Mahasiswa
                'rules' => array(
                    'required'
                ),
                'label' => 'ID'
            ),
            
            'name' => array( // Filter Nama
                'rules' => array(
                    'required'
                ),
                'label' => 'Nama',
                'filter' => array('trim')
            ),
            
            'email' => array( // Filter Nama
                'rules' => array(
                    'required',
                    'email'
                ),
                'label' => 'Email',
                'filter' => array('trim')
            ),
            
            'phone' => array( // Filter Nama
                'rules' => array(
                    'required',
                    'numeric'
                ),
                'label' => 'Nomor HP',
                'filter' => array('trim')
            ),
            
            'address' => array( // Filter Nama
                'rules' => array(
                    'required',
                ),
                'label' => 'Alamat',
                'filter' => array('trim')
            ),
            
            'password' => array( // Filter Password
                'rules' => array(
                    'required',
                    'min' => 8,
                    'compare' => 'konfirmasi_password'
                ),
                'label' => 'Password',
                'filter' => array('trim')
            ),

            'konfirmasi_password' => array( //Filter Repassword
                'rules' => array(
                    'required'
                ),
                'label' => 'Konfirmasi Password',
                'filter' => array('trim')
            )
        );
    }
}

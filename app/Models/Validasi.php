<?php
namespace Models;
use Resources;

class Validasi extends Resources\Validation {
    
    public $checkUser = true;
    public $checkEmail = true;
    public $checkNomor = true;

    public function __construct()
    {
        parent::__construct();

        $this->cekmember = new \Models\Manajemen_member;
        
        $this->setRuleErrorMessages(
            array(
                'required' => '%label% tidak boleh kosong', 
                'email' => '%label% harus berformat email',
                'min' => '%label% jumlah karakter yang diberikan minimal berjumlah %size%',
                'max' => '%label% jumlah karakter yang diberikan maksimal berjumlah %size%',
            )
        );  
    }

    public function setRules()
    {
        return array(
            
            
            'oldpassword' => array(
                'rules' => array(
                    'required',
                    'callback' => 'oldpassword'
                ),
                'label' => 'Password Lama'
            ),

            //=============Validasi Insert==========//

            'username' => array( // Filter Mahasiswa
                'rules' => array(
                    'required',
                    'min' => 9,
                    'max' => 30,
                    'callback' => 'usernameExists'
                ),
                'label' => 'Username',
                'filter' => array('trim', 'ucwords')
            ),

            'usernameup' => array( // Filter Mahasiswa
                'rules' => array(
                    'required',
                    'min' => 9,
                    'max' => 30,
                    'callback' => 'usernameExistsup'
                ),
                'label' => 'Username',
                'filter' => array('trim', 'ucwords')
            ),


            'nama' => array( // Filter Nama
                'rules' => array(
                    'required',
                    'min' => 3
                ),
                'label' => 'Nama Lengkap'
            ),

            'type' => array( // Filter Nama
                'rules' => array(
                    'required'
                ),
                'label' => 'Tipe user'
            ),
            
            'value' => array( // Filter Password
                'rules' => array(
                    'required',
                    'min' => 5,
                    'compare' => 'revalue'
                ),
                'label' => 'Password'
            ),

            'revalue' => array( //Filter Repassword
                'rules' => array(
                    'required'
                ),
                'label' => 'Retype Password'
            ),

            'passinfo' => array( // Filter Password
                'rules' => array(
                    'required',
                    'min' => 5,
                    'compare' => 'repassinfo'
                ),
                'label' => 'Password'
            ),

            'repassinfo' => array( //Filter Repassword
                'rules' => array(
                    'required'
                ),
                'label' => 'Retype Password'
            ),

            'no_telp' => array( //Filter Nomor Telepon
                'rules' => array(
                    'required',
                    'numeric',
                    'callback' => 'noExists'
                ),
                'label' => 'Nomor Handphone'
            ),

            'email' => array( //Filter Email
                'rules' => array(
                    'required',
                    'min' => 3,
                    'email',
                    'callback' => 'emailExists'
                ),
                'label' => 'Email',
                'filter' => array('trim', 'strtolower')
            ),

             'no_telpup' => array( //Filter Nomor Telepon
                'rules' => array(
                    'required',
                    'numeric',
                    'callback' => 'noExistsup'
                ),
                'label' => 'Nomor Handphone'
            ),

            'emailup' => array( //Filter Email
                'rules' => array(
                    'required',
                    'min' => 3,
                    'email',
                    'callback' => 'emailExistsup'
                ),
                'label' => 'Email',
                'filter' => array('trim', 'strtolower')
            ),

            'nama_unit' => array( //Filter Prodi / Jurusan
                    'rules' => array(
                    'required'
                ),
                'label' => 'Prodi atau Jurusan'
            )
        );
    }

    public function oldpassword($field, $value, $label)
    {
        if($hasil = $this->cekmember->getByPassword($value)) {
            return true;
        }
        else {
            $this->setErrorMessage($field, 'Password lama tidak cocok');
            return false;
        }
    }

    public function usernameExists($field, $value, $label)
    {
        if( ! $this->checkUser)
        return true;

        if( ! $this->cekmember->getByUsername($value))
        return true;
       
        $this->setErrorMessage($field, 'Username sudah ada.');
       
        return false;
    }

    public function emailExists($field, $value, $label)
    {
        if( ! $this->checkEmail)
        return true;
       
        if( ! $this->cekmember->getByEmail(strtolower($value)))
        return true;
       
        $this->setErrorMessage($field, 'Email sudah ada.');
       
        return false;
    }

    public function noExists($field, $value, $label)
    {
        if( ! $this->checkNomor)
        return true;
       
        if( ! $this->cekmember->getByHP($value))
        return true;
       
        $this->setErrorMessage($field, 'No HP sudah ada.');
       
        return false;
    }

    //===================================================//

    public function usernameExistsup($field, $value, $label)
    {
        
        $this->checkUser = false;
        if( ! $this->checkUser)
        return true;

        if( ! $this->cekmember->getByUsername($value))
        return true;
       
        $this->setErrorMessage($field, 'Username sudah ada.');
       
        return false;
    }

    public function emailExistsup($field, $value, $label)
    {
        $this->checkEmail = false;
        if( ! $this->checkEmail )
        return true;
       
        if( ! $this->cekmember->getByEmail(strtolower($value)))
        return true;
       
        $this->setErrorMessage($field, 'Email sudah ada.');
       
        return false;
    }

    public function noExistsup($field, $value, $label)
    {
        $this->checkNomor = false;
        if( ! $this->checkNomor)
        return true;
       
        if( ! $this->cekmember->getByHP($value))
        return true;
       
        $this->setErrorMessage($field, 'No HP sudah ada.');
       
        return false;
    }
}

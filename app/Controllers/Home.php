<?php
namespace Controllers;
use Resources, Models, Library;

class Home extends Resources\Controller
{    
    public function __construct(){
        parent::__construct();
        $this->post = new Resources\Request;
        $this->login = new Models\Login;
        $this->civitas = new Models\Civitas;
        $this->validasi = new Models\Validasi;
        $this->session = new Resources\Session();
    }
    
    public function index() {
        $ceklogin = $this->session->getValue('isLogin');
        $name = $this->session->getValue('name');
        $username = $this->session->getValue('username');
        
        if(($ceklogin)== true && $username) { 
            $data = array(
                'url'  => $this->uri->baseUri,
                'titlebar' => 'Selamat Datang di Web Civitas JTIF',
                'navbar' => 'Beranda Civitas',
                'name' => $name,
                'username' => $username,
                'kontentitle' => 'Selamat datang '. '<strong style=color:#5FB2FF>'.$name.'</strong>'
            );
            $this->output('views_beranda_civitas', $data);
        }
        else  {
            $this->redirect('login');
        } 
    }
    
    public function edit_profil_civitas() {
        $ceklogin = $this->session->getValue('isLogin');
        $id = $this->session->getValue('id');
        $name = $this->session->getValue('name');
        $username = $this->session->getValue('username');
        
        if($ceklogin == true && $username) {
            $data = array(
                'edit_profil' => $this->civitas->_edit_profil_civitas($id),
                'url'  => $this->uri->baseUri,
                'titlebar' => 'Selamat Datang di Web Civitas JTIF',
                'navbar' => 'Edit Profil Civitas',
                'name' => $name,
                'username' => $username,
                'kontentitle' => 'Edit Profil Civitas'
            );
            $this->output('views_edit_profil_civitas', $data);
        }
        else {
            $this->redirect('login');
        }
    }
    
     public function profilbaru() {
        $ceklogin = $this->session->getValue('isLogin');
        $id = $this->session->getValue('id');
        $name = $this->session->getValue('name');
        $username = $this->session->getValue('username');
        if($level == 1 & $ceklogin == true) {
            if( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
            if($this->validasi->validate()){

                $id = $this->post->POST('id', FILTER_SANITIZE_NUMBER_INT);
                $nama = $this->post->POST('nama',FILTER_SANITIZE_MAGIC_QUOTES);
                $emailup = $this->post->POST('emailup',FILTER_SANITIZE_MAGIC_QUOTES);
                $no_telpup = $this->post->POST('no_telpup',FILTER_SANITIZE_MAGIC_QUOTES);

                $numeric = "+$no_telpup";

                $editprofil = array(
                  'nama' => $nama,
                  'email' => $emailup,
                  'no_telp' => $numeric
                );

                $where = array('id' => $id);

                $updateprofil=$this->administrator->updateprofil($editprofil, $where);

                if($updateprofil){
                  echo "<script>alert('Profil Berhasil Diubah'); window.location = 'editprofil' </script>";
                } else {
                  echo "<script>alert('Profil Gagal Diubah'); window.location = 'editprofil' </script>";
                }
            }
          }
          $this->output('edit_profilvalid', array(
                'validasi' => $this->validasi, 
                'uname' => $this->session->getValue('username'))
          );
        }

      
      
      else {
        $this->redirect('home');
      }
    
    }
    
    public function login() {
        if($this->session->getValue('username') && $this->session->getValue('isLogin')== true) {
            $this->redirect('beranda-civitas');
        }   
        else {
            if($_SERVER['REQUEST_METHOD'] == 'POST') {
                $username = $this->post->POST('username', FILTER_SANITIZE_MAGIC_QUOTES);
                $password = md5($this->post->POST('password', FILTER_SANITIZE_MAGIC_QUOTES));    
                
                $login = $this->login->login($username, $password);
               
                if($login) {
                    $data = array (
                        'isLogin' => true,
                        'id' => $login->id,
                        'username' => $login->username,
                        'name' => $login->name
                    );
                    $this->session->setValue($data);
                    $this->redirect('beranda-civitas');
                }
                else {
                    $salah = "Maaf NIP/NIM Anda Salah!!";
                }
                echo "<script>alert('$salah'); window.location = 'login' </script>";
            }
        }
        $data = array (
            'titlebar' => 'Selamat datang di Web Civitas',
            'url' => $this->uri->baseUri
        );
        $this->output('views_login_civitas', $data);
    }

    public function logout() {
        $this->session->destroy();
        $this->redirect('login');
    }
    public function paduan_web_civitas() {
        $this->output('paduan');
    }

   

    public function ubahsandi() {
      
      $id = $this->session->getValue('id');
      $ceklogin=$this->session->getValue('isLogin');
      $level = $this->session->getValue('level');


      if($level == 1 & $ceklogin == true) {

            $data = array(
                'uname' => $this->session->getValue('username'),
                'validasi' => $this->validasi
            );
            $this->output('edit_password', $data);
      }

      else if($level == 2 & $ceklogin == true) {
        
            $data = array(
                'uname' => $this->session->getValue('username'),
                'validasi' => $this->validasi
            );
            $this->output('edit_password', $data);
      }

      else if($level == 3 & $ceklogin == true) {

            $data = array(
                'uname' => $this->session->getValue('username'),
                'validasi' => $this->validasi
            );
            $this->output('edit_password', $data);
      }
      
      else {
        $this->redirect('home');
      }
    
    }

    public function sandibaru() {
      
      $id = $this->session->getValue('id');
      $ceklogin=$this->session->getValue('isLogin');
      $level = $this->session->getValue('level');

      if($level == 1 & $ceklogin == true) {
        if( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
            
            if($this->validasi->validate()){
                 
                $oldpassword=$this->post->POST('oldpassword',FILTER_SANITIZE_MAGIC_QUOTES);
                $passinfo=md5($this->post->POST('passinfo',FILTER_SANITIZE_MAGIC_QUOTES));
                
                $editpass = array('passinfo' => $passinfo);
                $where = array('id' => $id);
                
                $this->administrator->edituser($editpass, $where);
                echo "<script>alert('Password Berhasil Diubah'); window.location = 'ubahsandi' </script>";
                
            }

            $this->output('edit_password', array(
                'validasi' => $this->validasi, 
                'uname' => $this->session->getValue('username'))
            );
        }
        else {
            $this->redirect('home'); 
        }
      }

      else if($level == 2 & $ceklogin == true) {
        if( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
            
            if($this->validasi->validate()){
                 
                $oldpassword=$this->post->POST('oldpassword',FILTER_SANITIZE_MAGIC_QUOTES);
                $passinfo=md5($this->post->POST('passinfo',FILTER_SANITIZE_MAGIC_QUOTES));
                
                $editpass = array('passinfo' => $passinfo);
                $where = array('id' => $id);
                
                $this->manajemen_adminfakultas->edituser($editpass, $where);
                echo "<script>alert('Password Berhasil Diubah'); window.location = 'ubahsandi' </script>";
            }

            $this->output('edit_password', array(
                'validasi' => $this->validasi, 
                'uname' => $this->session->getValue('username'))
            );
        }
        else {
            $this->redirect('home');
        }
      }
          
      else if($level == 3 & $ceklogin == true) {        
        if( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
            
            if($this->validasi->validate()){
                 
                $oldpassword=$this->post->POST('oldpassword',FILTER_SANITIZE_MAGIC_QUOTES);
                $passinfo=md5($this->post->POST('passinfo',FILTER_SANITIZE_MAGIC_QUOTES));
                
                $editpass = array('passinfo' => $passinfo);
                $where = array('id' => $id);
                
                $this->manajemen_member->edituser($editpass, $where);
                echo "<script>alert('Password Berhasil Diubah'); window.location = 'ubahsandi' </script>";
                
            }

            $this->output('edit_password', array(
                'validasi' => $this->validasi, 
                'uname' => $this->session->getValue('username'))
            );
        }
        else {
            $this->redirect('home'); 
        }
      }
    }
}
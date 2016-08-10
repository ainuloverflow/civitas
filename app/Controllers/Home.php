<?php
namespace Controllers;
use Resources, Models, Library;

class Home extends Resources\Controller {    
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
    
     public function validasi_edit_profil_civitas() {
        $ceklogin = $this->session->getValue('isLogin');
        $id = $this->session->getValue('id');
        $name = $this->session->getValue('name');
        $username = $this->session->getValue('username');
        
        if($username && $ceklogin == true) {
            if( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
                if($this->validasi->validate()){

                    $id = $this->post->POST('id', FILTER_SANITIZE_MAGIC_QUOTES);
                    $name = $this->post->POST('name',FILTER_SANITIZE_MAGIC_QUOTES);
                    $email = $this->post->POST('email',FILTER_SANITIZE_EMAIL);
                    $phone = $this->post->POST('phone',FILTER_SANITIZE_MAGIC_QUOTES);
                    $address = $this->post->POST('address', FILTER_SANITIZE_MAGIC_QUOTES);

                    $editprofil = array(
                        'name' => $name,
                        'email' => $email,
                        'phone' => $phone,
                        'address' => $address  
                    );
                    $where = array('id' => $id);
                    
                    $updateprofil = $this->civitas->updateprofil($editprofil, $where);

                    if($updateprofil) {
                        echo "<script>alert('Profil Berhasil Diubah'); window.location = 'edit-profil-civitas' </script>";
                    } 
                    else {
                        echo "<script>alert('Profil Gagal Diubah'); window.location = 'edit-profil-civitas' </script>";
                    }
                }
            }
            $data = array (
                'validasi' => $this->validasi, 
                'url'  => $this->uri->baseUri,
                'titlebar' => 'Selamat Datang di Web Civitas JTIF',
                'navbar' => 'Edit Profil Civitas',
                'name' => $name,
                'username' => $username,
                'kontentitle' => 'Edit Profil Civitas'      
            );
            $this->output('views_validasi_edit_profil_civitas', $data);
        }
        else {
            $this->redirect('beranda-civitas');
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
    public function pedoman_web_civitas() {
        $this->output('views_pedoman_civitas');
    }

    public function ganti_password_hotspot() {
        $ceklogin = $this->session->getValue('isLogin');
        $id = $this->session->getValue('id');
        $name = $this->session->getValue('name');
        $username = $this->session->getValue('username');

        if($username && $ceklogin == true) {
            if($_SERVER['REQUEST_METHOD'] == 'POST') {
                if($this->validasi->validate()){
                $password_civitas = $this->post->POST('password_civitas', FILTER_SANITIZE_MAGIC_QUOTES);
                $password = $this->post->POST('password', FILTER_SANITIZE_MAGIC_QUOTES);
                $konfimasi_password = $this->post->POST('konfirmasi_password', FILTER_SANITIZE_MAGIC_QUOTES);    

                $value_permanent_users = array ('password'=>md5($password));
                $where_id_permanent_users = array ('id' => $id );
                       
                $update_password_permanent_user = $this->civitas->update_password_permanent_users($value_permanent_users, $where_id_permanent_users);
                $update_radcheck = $this->civitas->update_password_hotspot($username, $password);

                if($update_password_permanent_user && $update_radcheck) {
                    echo "<script>alert('Password Hotspot berhasil di ubah'); window.location = 'ganti-password-hotspot' </script>";
                }
                else {
                    echo "<script>alert('Password Hotspot gagal di ubah'); window.location = 'ganti-password-hotspot' </script>";
                }
                }
            }
        }
        else {
            $this->redirect('login');
        }
        $data = array (
            'validasi' => $this->validasi,
            'url'  => $this->uri->baseUri,
            'titlebar' => 'Selamat Datang di Web Civitas JTIF',
            'navbar' => 'Ganti Password Hotpot',
            'name' => $name,
            'username' => $username,
            'kontentitle' => 'Ganti Password Hotspot'     
        );
        $this->output('views_edit_password_hotspot', $data);
    }
    
    public function ganti_password_civitas() {
        $ceklogin = $this->session->getValue('isLogin');
        $id = $this->session->getValue('id');
        $name = $this->session->getValue('name');
        $username = $this->session->getValue('username');

        if($username && $ceklogin == true) {
            if($_SERVER['REQUEST_METHOD'] == 'POST') {
                if($this->validasi->validate()){
                $password_civitas_lama = $this->post->POST('password_civitas_lama', FILTER_SANITIZE_MAGIC_QUOTES);
                $password_civitas_baru = $this->post->POST('password_civitas_baru', FILTER_SANITIZE_MAGIC_QUOTES);
                $konfimasi_password_civitas_baru = $this->post->POST('konfimasi_password_civitas_baru', FILTER_SANITIZE_MAGIC_QUOTES);    

                $value_permanent_users = array ('password_civitas'=>md5($password_civitas_baru));
                $where_id_permanent_users = array ('id' => $id );
                       
                $update_password_civitas = $this->civitas->update_password_civitas($value_permanent_users, $where_id_permanent_users);

                if($update_password_civitas) {
                    echo "<script>alert('Password Civitas berhasil di ubah'); window.location = 'ganti-password-civitas' </script>";
                }
                else {
                    echo "<script>alert('Password Civitas gagal di ubah'); window.location = 'ganti-password-civitas' </script>";
                }
                }
            }
        }
        else {
            $this->redirect('login');
        }
        $data = array (
            'validasi' => $this->validasi,
            'url'  => $this->uri->baseUri,
            'titlebar' => 'Selamat Datang di Web Civitas JTIF',
            'navbar' => 'Ganti Password Civitas',
            'name' => $name,
            'username' => $username,
            'kontentitle' => 'Ganti Password Civitas'     
        );
        $this->output('views_edit_password_civitas', $data);
    }
}

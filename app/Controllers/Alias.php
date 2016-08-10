<?php
namespace Controllers;
use Resources, Library;
class Alias
{
    public function index() {
        $args = func_get_args();
        $route = [
            'login' => [
                'class' => '\\Controllers\Home',
                'method' => 'login'
            ],

            'logout' => [
                'class' => '\\Controllers\Home',
                'method' => 'logout'
            ],

            'beranda-civitas' => [
                'class' => '\\Controllers\Home',
                'method' => 'index'
            ],

            'edit-profil-civitas' => [
                'class' => '\\Controllers\Home',
                'method' => 'edit_profil_civitas'
            ],
            
            'validasi-edit-profil-civitas' => [
                'class' => '\\Controllers\Home',
                'method' => 'validasi_edit_profil_civitas'
            ],

            'ganti-password-hotspot' => [
                'class' => '\\Controllers\Home',
                'method' => 'ganti_password_hotspot'
            ],

            'ganti-password-civitas' => [
                'class' => '\\Controllers\Home',
                'method' => 'ganti_password_civitas'
            ],
            
            'pedoman-web-civitas' => [
                'class' => '\\Controllers\Home',
                'method' => 'pedoman_web_civitas'
            ],

        ];

        if( in_array($args[0], ['login', 'logout', 'beranda-civitas', 'edit-profil-civitas', 'ganti-password-hotspot', 'ganti-password-civitas', 'validasi-edit-profil-civitas', 'pedoman-web-civitas'])){
            try {
                $route[$args[0]]['class'] = new $route[$args[0]]['class'];

                call_user_func_array(
                    array_values($route[$args[0]]),
                    array_slice($args, 1)
                );
            }
            catch(Exception $e) {    
                //throw new \Resources\HttpException('Page not found!');
                $this->output('errors/404');
            }
        }
    }
}
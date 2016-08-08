<?php 
namespace Models;
use Resources;

class Manajemen_member {
    
    public function __construct(){
		// DB koneksi default
		$this->db = new Resources\Database;
    }

    /*public function Getcari($page = 1, $limit = 10, $ringkasan) {
    	$offset = ($limit * $page) - $limit;
        Return $this->db->results("SELECT * FROM radcheck WHERE username REGEXP '$ringkasan' 
        OR nama REGEXP '$ringkasan' AND level = 3 ORDER BY id ASC LIMIT $offset, $limit");        
    }

    public function read($page = 1, $limit = 10) {
    	$offset = ($limit * $page) - $limit;
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 ORDER BY id ASC LIMIT $offset, $limit");        
    }**/

    public function readAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 ORDER BY id");
    }

    public function readFipAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 AND nama_unit =
            'FIP' 
            OR nama_unit = 'S1 Bimbingan Konseling' 
            OR nama_unit = 'S1 Teknologi Pendidikan' 
            OR nama_unit = 'S1 Pendidikan Luar Sekolah' 
            OR nama_unit = 'S1 Pendidikan Luar Biasa' 
            OR nama_unit = 'S1 Pendidikan Guru Sekolah Dasar' 
            OR nama_unit = 'S1 Psikologi'
            OR nama_unit = 'S1 PG - PAUD' 
            OR nama_unit = 'S1 Manajemen Pendidikan' ORDER BY id");
    }

    public function readFbsAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 AND nama_unit =
            'FBS'
            OR nama_unit = 'S1 Pendidikan Bahasa dan Sastra Indonesia'
            OR nama_unit = 'S1 Pendidikan Bahasa Inggris'
            OR nama_unit = 'S1 Pendidikan Bahasa Jerman'
            OR nama_unit = 'S1 Pendidikan Bahasa Jepang'
            OR nama_unit = 'S1 Pendidikan Bahasa dan Sastra Jawa'
            OR nama_unit = 'S1 Pendidikan Seni Rupa'
            OR nama_unit = 'S1 Sastra Indonesia'
            OR nama_unit = 'S1 Sastra Inggris'
            OR nama_unit = 'S1 Sastra Jerman'
            OR nama_unit = 'S1 Pendidikan Bahasa Mandarin'
            OR nama_unit = 'D III Desain Grafis' ORDER BY id");
    }

    public function readFmipaAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 AND nama_unit =
            'FMIPA'
            OR nama_unit = 'S1 Pendidikan Matematika'
            OR nama_unit = 'S1 Pendidikan Fisika'
            OR nama_unit = 'S1 Pendidikan Kimia'
            OR nama_unit = 'S1 Pendidikan Biologi'
            OR nama_unit = 'S1 Matematika'
            OR nama_unit = 'S1 Fisika'
            OR nama_unit = 'S1 Biologi'
            OR nama_unit = 'S1 Pendidikan Sains' ORDER BY id");
    }

    public function readFisAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 AND nama_unit =
            'FIS'
            OR nama_unit = 'S1 Pendidikan Pancasila dan Kewarganegaraan'
            OR nama_unit = 'S1 Pendidikan Geografi'
            OR nama_unit = 'S1 Pendidikan Sejarah'
            OR nama_unit = 'S1 Ilmu Hukum'
            OR nama_unit = 'S1 Ilmu Administrasi Negara'
            OR nama_unit = 'S1 Sosiologi'
            OR nama_unit = 'S1 Ilmu Komunikasi'
            OR nama_unit = 'D III Administrasi Negara' ORDER BY id");
    }

    public function readFtAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 AND nama_unit =
            'FT'
            OR nama_unit = 'S1 Pend. Teknik Elektro'
            OR nama_unit = 'S1 Pend Teknik Mesin'
            OR nama_unit = 'S1 Pend Teknik Bangunan'
            OR nama_unit = 'DIII Teknik Listrik'
            OR nama_unit = 'D III Manajemen Informatika'
            OR nama_unit = 'DIII Teknik Mesin'
            OR nama_unit = 'DIII Teknik Sipil'
            OR nama_unit = 'S1 Pendisikan Teknologi Informasi'
            OR nama_unit = 'S1 Teknik Elektro'
            OR nama_unit = 'S1 Teknik Mesin'
            OR nama_unit = 'S1 Pendidikan Tata Boga'
            OR nama_unit = 'S1 Pendidikan Tata Busana'
            OR nama_unit = 'S1 Pendidikan Tata Rias'
            OR nama_unit = 'DIII Tata Boga'
            OR nama_unit = 'DIII Tata Busana' ORDER BY id");
    }

    public function readFikAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 AND nama_unit =
            'FIK'
            OR nama_unit = 'S1 Pend. Jasmani'
            OR nama_unit = 'S1 Pendidikan Kepelatihan Olahraga'
            OR nama_unit = 'S1 Ilmu Keolahragaan' ORDER BY id");
    }

    public function readFeAll() {
        Return $this->db->results("SELECT * FROM radcheck WHERE level = 3 AND nama_unit =
            'FE'
            OR nama_unit = 'S1 Pend. Ekonomi'
            OR nama_unit = 'S1 Pendidikan Akuntansi'
            OR nama_unit = 'S1 Pendidikan Administrasi Perkantoran'
            OR nama_unit = 'S1 Pendidikan Tata Niaga'
            OR nama_unit = 'S1 Manajemen'
            OR nama_unit = 'S1 Akuntansi'
            OR nama_unit = 'D III Akuntansi' ORDER BY id");
    }

    public function totalmember() {
		Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 3");
    }

    public function totalmemberFIP() {
        Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 3 AND nama_unit = 
            'FIP' 
            OR nama_unit = 'S1 Bimbingan Konseling' 
            OR nama_unit = 'S1 Teknologi Pendidikan' 
            OR nama_unit = 'S1 Pendidikan Luar Sekolah' 
            OR nama_unit = 'S1 Pendidikan Luar Biasa' 
            OR nama_unit = 'S1 Pendidikan Guru Sekolah Dasar' 
            OR nama_unit = 'S1 Psikologi'
            OR nama_unit = 'S1 PG - PAUD' 
            OR nama_unit = 'S1 Manajemen Pendidikan' ");
    }

    public function totalmemberFBS() {
        Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 3 AND nama_unit =
            'FBS'
            OR nama_unit = 'S1 Pendidikan Bahasa dan Sastra Indonesia'
            OR nama_unit = 'S1 Pendidikan Bahasa Inggris'
            OR nama_unit = 'S1 Pendidikan Bahasa Jerman'
            OR nama_unit = 'S1 Pendidikan Bahasa Jepang'
            OR nama_unit = 'S1 Pendidikan Bahasa dan Sastra Jawa'
            OR nama_unit = 'S1 Pendidikan Seni Rupa'
            OR nama_unit = 'S1 Sastra Indonesia'
            OR nama_unit = 'S1 Sastra Inggris'
            OR nama_unit = 'S1 Sastra Jerman'
            OR nama_unit = 'S1 Pendidikan Bahasa Mandarin'
            OR nama_unit = 'D III Desain Grafis' ");
    }

    public function totalmemberFMIPA() {
        Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 3 AND nama_unit =
            'FMIPA'
            OR nama_unit = 'S1 Pendidikan Matematika'
            OR nama_unit = 'S1 Pendidikan Fisika'
            OR nama_unit = 'S1 Pendidikan Kimia'
            OR nama_unit = 'S1 Pendidikan Biologi'
            OR nama_unit = 'S1 Matematika'
            OR nama_unit = 'S1 Fisika'
            OR nama_unit = 'S1 Biologi'
            OR nama_unit = 'S1 Pendidikan Sains' ");
    }

    public function totalmemberFIS() {
        Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 3 AND nama_unit =
            'FIS'
            OR nama_unit = 'S1 Pendidikan Pancasila dan Kewarganegaraan'
            OR nama_unit = 'S1 Pendidikan Geografi'
            OR nama_unit = 'S1 Pendidikan Sejarah'
            OR nama_unit = 'S1 Ilmu Hukum'
            OR nama_unit = 'S1 Ilmu Administrasi Negara'
            OR nama_unit = 'S1 Sosiologi'
            OR nama_unit = 'S1 Ilmu Komunikasi'
            OR nama_unit = 'D III Administrasi Negara' ");
    }

    public function totalmemberFT() {
        Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 3 AND nama_unit =
            'FT'
            OR nama_unit = 'S1 Pend. Teknik Elektro'
            OR nama_unit = 'S1 Pend Teknik Mesin'
            OR nama_unit = 'S1 Pend Teknik Bangunan'
            OR nama_unit = 'DIII Teknik Listrik'
            OR nama_unit = 'D III Manajemen Informatika'
            OR nama_unit = 'DIII Teknik Mesin'
            OR nama_unit = 'DIII Teknik Sipil'
            OR nama_unit = 'S1 Pendisikan Teknologi Informasi'
            OR nama_unit = 'S1 Teknik Elektro'
            OR nama_unit = 'S1 Teknik Mesin'
            OR nama_unit = 'S1 Pendidikan Tata Boga'
            OR nama_unit = 'S1 Pendidikan Tata Busana'
            OR nama_unit = 'S1 Pendidikan Tata Rias'
            OR nama_unit = 'DIII Tata Boga'
            OR nama_unit = 'DIII Tata Busana' ");
    }

    public function totalmemberFIK() {
        Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 3 AND nama_unit =
            'FIK'
            OR nama_unit = 'S1 Pend. Jasmani'
            OR nama_unit = 'S1 Pendidikan Kepelatihan Olahraga'
            OR nama_unit = 'S1 Ilmu Keolahragaan' ");
    }

    public function totalmemberFE() {
        Return $this->db->getVar("SELECT COUNT(id) FROM radcheck WHERE level = 3 AND nama_unit =
            'FE'
            OR nama_unit = 'S1 Pend. Ekonomi'
            OR nama_unit = 'S1 Pendidikan Akuntansi'
            OR nama_unit = 'S1 Pendidikan Administrasi Perkantoran'
            OR nama_unit = 'S1 Pendidikan Tata Niaga'
            OR nama_unit = 'S1 Manajemen'
            OR nama_unit = 'S1 Akuntansi'
            OR nama_unit = 'D III Akuntansi' ");
    }

    public function getmemberId($value) {
        Return $this->db->row("SELECT * FROM radcheck WHERE id = $value AND level = 3 ");
    }  

    public function tambahuser($value) {
        $this->db->insert("radcheck", $value);
    }
    
    public function updateprofil($value, $where) {
        $updateprofil=$this->db->update('radcheck', $value, $where);
        Return $updateprofil;
    }
    
    public function edituser($value, $where) {
        $this->db->update('radcheck', $value, $where);
    }

    public function hapususer($where) {
        $this->db->delete('radcheck', $where);
    }

    public function getByPassword($value) {
        Return $this->db->results("SELECT username FROM radcheck WHERE passinfo = md5('$value')");        
    }

    public function getByUsername($value) {
        Return $this->db->results("SELECT username FROM radcheck WHERE username = '$value'");        
    }

    public function getByEmail($value) {
        Return $this->db->results("SELECT email FROM radcheck WHERE email = '$value'");        
    }

    public function getByHP($value) {
        Return $this->db->results("SELECT no_telp FROM radcheck WHERE no_telp = '$value' ");        
    }


}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {

    public function __construct(){
        parent::__construct();
    }

    public function index(){
        $uid = 1;
        $res = $this->db->from('menber')->where("id=$uid")->get()->row_array();
//        print_r($res);
        $date = array('res'=>$res);
        $this->load->view('Admin/index.html',$date);
    }

    public function order(){

    }
}

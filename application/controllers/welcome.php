<?php 
class welcome extends CI_Controller {

    private $captcha_path = 'assets/img/captcha/';

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->load->helper(array('captcha'));
        $captcha = create_captcha(array(
            'word'        => strtoupper(substr(md5(time()), 0, 6)),
            'img_path'    => $this->captcha_path,
            'img_url'    => $this->captcha_path
        ));
        $data = array(
            'captcha'        => $captcha
        );
        $this->session->set_userdata('captcha', $captcha['word']);
        $this->load->view('wel', $data);
    }

}?>
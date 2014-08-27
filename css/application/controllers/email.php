<?php 
class Email extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
    }
    function index()
        {
                 $config=array(
                    'protocol'=>'smtp',
                    'smtp_host'=>'ssl://smtp.googlemail.com',
                    'smtp_port'=>465,
                    'smtp_user'=>'username@gmail.com',
                    'smtp_pass'=>'yourGmailPass'
         );
 
        $this->load->library("email",$config);
 
        $this->email->set_newline("\r\n");
        $this->email->from("user@gmail.com","Your Name");
        $this->email->to("someone@gmail.com");
        $this->email->subject("Test message!");
        $this->email->message("Its working!");
 
       // $path=$_SERVER["DOCUMENT_ROOT"];
       // $file=$path."/ci/attachments/info.txt";
 
       // $this->email->attach($file);
 
        if($this->email->send())
        {
          echo "Mail send successfully!";
         }
 
        else
        {
         show_error($this->email->print_debugger());
         }
    }
}
       ?>
<div class="content">
	<h2> <?php echo $this->session->userdata('user_name'); ?>!</h2>
   
     
	<h4><?php echo anchor('user/logout', 'Logout'); ?></h4>
       
        <?php echo form_open("user/edit"); ?>
        <table border="1" width="60%" height="50%">
            <tr>
                <input type="hidden" name="id" value="<?php echo $this->session->userdata('user_id'); ?>">
                <td>Name</td> <td><input type="text" name="uname" value="<?php echo $uname[0]['username']; ?>"></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
             
        </table>  
           <?php echo form_close(); ?>
<?php 
//echo "<pre>";w
//print_r($user);
//for(i=0;i<20)
//echo $user2->id;
 //echo $user[0]['id'];
// echo $user[0]['username'];   
 //a href="user/mfdsfmf/$user[0]['id']"
//echo $user[0]['email'];
//print_r($title);





?>
</div><!--<div class="content">-->
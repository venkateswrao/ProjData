<div class="content">
	<h2>Welcome Back, <?php echo $this->session->userdata('username'); ?>!</h2>
     <p>This section represents the area that only logged in members can access.</p>
     
	<h4><?php echo anchor('user/logout', 'Logout'); ?></h4>
        <table border="1" width="60%" height="50%">
            <tr>
                <td>Name</td>
                <td>Email ID</td>
                <td>OPtions</td>
            </tr>
             <tr>
                 <?php $id=$user[0]['id'];?>
                <td><?php echo $user[0]['username']; ?></td>
                <td><?php echo $user[0]['email']; ?></td>
                <td><?php echo anchor('user/edit_user', 'Edit'); ?></td>
            </tr>
        </table>  
         <?php echo anchor('hall/add_hall', 'Add Hall'); ?>
         <?php echo anchor('hall/edit_hall', 'Edit Hall'); ?>
<?php 
//echo "<pre>";
//print_r($user);
//for(i=0;i<20)
//echo $user2->id;
 //echo $user[0]['id'];
 //echo $user[0]['username'];   
 //a href="user/mfdsfmf/$user[0]['id']"
//echo $user[0]['email'];
//print_r($title);





?>
</div><!--<div class="content">-->
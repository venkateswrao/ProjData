<div class="content">
	<h2> <?php echo $this->session->userdata('username'); ?>!</h2>
    
     
	<h4><?php echo anchor('user/logout', 'Logout'); ?></h4>
        <?php echo form_open("hall/updatehall"); ?>
        <table border="1" width="60%" height="50%">
            <tr>
                <input type="hidden" name="id" value="<?php echo $hall[0]['id']; ?>">
                <td>hall</td> <td><input type="text" name="hall" value="<?php echo $hall[0]['hall']; ?>"></td>
                 <td>city</td> <td><input type="text" name="city" value="<?php echo $hall[0]['city']; ?>"></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
             
        </table>  
           <?php echo form_close(); ?>
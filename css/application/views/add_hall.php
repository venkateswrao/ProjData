<div class="content">
	<h2>Welcome Back, <?php echo $this->session->userdata('username'); ?>!</h2>
     <p>This section represents the area that only logged in members can access.</p>
     
	<h4><?php echo anchor('user/logout', 'Logout'); ?></h4>
        <?php echo form_open("hall/add");?>
        Hall Name: <input type="text" name="hall"><br>
        Hall Locality:<input type="text" name="city"><br>
        <input type="submit" value="Save" name="add">
        <?php echo form_close();?>
</div>
<h3>List of images </h3>
<?php 
for($i=0;$i<count($images);$i++)
{
    $path=$images[0]['imgpath'];?>
 
 <img src="<?php echo base_url();?><?php echo $path;?> " width="40%" height="40%">
    
<?php

}
?>
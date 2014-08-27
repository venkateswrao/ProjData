<div id="login">
<?php
foreach($results as $data) {
    echo $data->name .  " --- " .$data->email." --- ".$data->phno."<br>";
}
?>
   <p><?php echo $links; ?></p>
  </div>
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <script>
  $(function() {
    var icons = {
      header: "ui-icon-circle-arrow-e",
      activeHeader: "ui-icon-circle-arrow-s"
    };
    $( "#accordion" ).accordion({
      icons: icons
    });
    $( "#toggle" ).button().click(function() {
      if ( $( "#accordion" ).accordion( "option", "icons" ) ) {
        $( "#accordion" ).accordion( "option", "icons", null );
      } else {
        $( "#accordion" ).accordion( "option", "icons", icons );
      }
    });
  });
  
  
    </script>
  <script >
    
</script>

<script type="text/javascript" src="jquery-1.9.0.js" ></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>


</head>
<body>
<?php
   
 echo $id=$_GET['ppd'];
 echo $id1=$_GET['rid'];
 echo $id2=$_GET['room_id'];

/*$query="select roomname,newdefaultallocation,roomrate,minstay from wp_rooms where 
ppro_id=$id and roomid=$id1 and room_id=$id2";
$q=mysql_query($query);
$row1=mysql_fetch_array($q);*/

   // echo $row1['inclusion'];
?>
    <form  name="myform"  id="myform" action="roompopup_update.php">
    <input type="hidden" name="pid" value="<?php echo $id;?>">
      <input type="hidden" name="rid" value="<?php echo $id1;?>">
        <input type="hidden" name="roomid" value="<?php echo $id2;?>">
<div id="accordion">
  <h3>Room Info</h3>
  <div>  
       Room : <?php //echo $row1['roomname'];?> <br>
       Default Allocation: <?php //echo $row1['newdefaultallocation'];?> <br>
       Default Rate: <?php //echo $row1['roomrate'];?> <br>
       Minium Stay: <?php //echo $row1['minstay'];?> <br>
      
       
  </div>
  <h3>Room Type Settings</h3>
  <div> 
   Default Allocation: <input type="text" name="allocation" value="<?php //echo $row1['newdefaultallocation'];?>">*<br><br>
   Default Rate: <input type="text" name="rate" value="<?php //echo $row1['roomrate'];?>">dollars  *<br><br>
   Minium Stay:<input type="text" name="min_stay" value="<?php //echo $row1['minstay'];?>">
   Room Stop Sell on New Days: <input type="checkbox" name="check" value=""><br><br>
  
  </div>
</div>
<!--<input type="button" value="Apply Changes" name="changes" id="changes">-->
<!--<button name="changes" id="changes">Apply Changes</button>-->
<input type="submit" value="Apply Changes" name="changes">
<input type="submit" value="Cancel" name="cancel">
 
    </form>
</body>
</html>

 

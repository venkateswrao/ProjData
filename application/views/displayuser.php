<?php
$sess_data=$this->session->userdata('username');
 $sess_data['id'];
 if(!$sess_data){
 	redirect('home','refresh');
 }
 if(isset($user)){
 $cnt=count($user);
 }
 
 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="http://localhost/CIexample/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://localhost/CIexample/css/font-awesome.min.css" rel="stylesheet">
    <link href="http://localhost/CIexample/css/prettyPhoto.css" rel="stylesheet">
    <link href="http://localhost/CIexample/css/animate.css" rel="stylesheet">
    <link href="http://localhost/CIexample/css/main.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
     
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head><!--/head-->
<body>
    <header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img src="http://localhost/CIexample/images/logo.png" alt="logo"></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                <?php if($sess_data['id']){?>
		   <li class='active'><a href='<?php echo base_url();?>home/dashboard'><span style="color: red;"><?php echo $sess_data['fname']."'s "."Dashboard";?></span></a>
                                   <?php }else {?>
                   </li>
                  <li class='active'><a href='<?php echo base_url();?>home'><span>Signup</span></a>                   
                    <?php }?>
                    </li>
                   <?php if($sess_data['id']){?>
                    <li class='has-sub'><a href='<?php echo base_url();?>home/logout'><span>Logout</span></a></li>
		    <?php
		   		}else{?>
				 <li class='has-sub'><a href='<?php echo base_url();?>home/login'><span>Login</span></a></li>
				<?php
				}?>
		  <li class='has-sub'><a href=''><span>Users</span></a></li>
		   <div class="clear"></div>
		 </ul> 
                   
              
            </div>
        </div>
    </header><!--/header-->

    <section id="title" class="emerald">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
		<?php echo "Welcome_". $sess_data['fname'];;?>
	</div>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->     
<?php $id=$sess_data['id'];?>
	<table style="width:300px;height:200px;border:1px;"><tr><th>Name</th><th></th><th>Email</th><th>Phone NO</th><th>Option</th></tr>
	<?php 
	if($cnt==1){
       ?>
	<tr><td><?php echo $user[0]['fname'];?></td><td></td><td><?php echo $user[0]['email'];?></td><td><?php echo $user[0]['phoneno'];?></td><td><a href='<?php echo base_url();?>home/deleteuser/<?php echo $user[0]['id'];?>'><span style="color:red">Delete</span></a></td></tr><?php } 
	else{
	
	foreach($user as $row){
     
  
	?>
	<tr><td><?php echo $row['lname'];?></td><td><?php echo $row['email'];?></td><td><?php echo $row['phoneno'];?></td><td><a href='<?php echo base_url();?>home/deleteuser/<?php echo $row['id'];?>'><span ">Delete</span></a></td></tr><?php } }?>
		</table>
		
		

    
    <section id="bottom" class="wet-asphalt">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h4>About Us</h4>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>
                    <p>Pellentesque habitant morbi tristique senectus.</p>
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <h4>Company</h4>
                    <div>
                        <ul class="arrow">
                            <li><a href="#">The Company</a></li>
                            <li><a href="#">Our Team</a></li>
                            <li><a href="#">Our Partners</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Conatct Us</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms of Use</a></li>
                            <li><a href="#">Copyright</a></li>
                        </ul>
                    </div>
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <h4>Latest Blog</h4>
                    <div>
                        <div class="media">
                            <div class="pull-left">
                                <img src="images/blog/thumb1.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <span class="media-heading"><a href="#">Pellentesque habitant morbi tristique senectus</a></span>
                                <small class="muted">Posted 17 Aug 2013</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img src="images/blog/thumb2.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <span class="media-heading"><a href="#">Pellentesque habitant morbi tristique senectus</a></span>
                                <small class="muted">Posted 13 Sep 2013</small>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img src="images/blog/thumb3.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <span class="media-heading"><a href="#">Pellentesque habitant morbi tristique senectus</a></span>
                                <small class="muted">Posted 11 Jul 2013</small>
                            </div>
                        </div>
                    </div>  
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <h4>Address</h4>
                    <address>
                        <strong>Twitter, Inc.</strong><br>
                        795 Folsom Ave, Suite 600<br>
                        San Francisco, CA 94107<br>
                        <abbr title="Phone">P:</abbr> (123) 456-7890
                    </address>
                    <h4>Newsletter</h4>
                    <form role="form">
                        <div class="input-group">
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter your email">
                            <span class="input-group-btn">
                                <button class="btn btn-danger" type="button">Go!</button>
                            </span>
                        </div>
                    </form>
                </div> <!--/.col-md-3-->
            </div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">LogOut Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a id="gototop" class="gototop" href="#"><i class="icon-chevron-up"></i></a></li><!--#gototop-->
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->
<script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
   
</body>
</html>
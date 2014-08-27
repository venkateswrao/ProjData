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
$(document).ready(function(){
	
		$("#reg").submit(function(){
			
    $(".error").hide();
	var fname=$('#fname').val();	
	var lname=$('#lname').val();
	var email=$('#email').val();
	var filter= /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	var pass=$('#pass').val();
	var rpass=$('#rpass').val();
	var date=$('#date').val();
	var gender=$('#sex').val();
	var phno=$('#phno').val();
	var location=$('#country').val();
	var pic=$('#pic').val();
	if(fname==""){
		 $("#fname").after('<span class="error" style="color:red ">Please enter your firstname.</span>');
	        hasError = true;
			 $('#fname').focus();
			return false;
			}else
	if(lname==""){
		 $("#lname").after('<span class="error" style="color:red ">Please enter your lastname.</span>');
	        hasError = true;
			 $('#lname').focus();
			return false;
			}else
				if(email==""){
					$("#email").after('<span class="error" style="color:red ">Please enter your email address.</span>');
					 hasError = true;
					 $('#email').focus();
					return false;
				    }else if (!filter.test(email)) {
				    	 $("#email").after('<span class="error" style="color:red ">Please enter a valid email address.</span>');
				         hasError = true;
							 $('#email').focus();
						    return false;
							 }
						else if(pass==""){
							 $("#pass").after('<span class="error" style="color:red ">Please enter your password.</span>');
						        hasError = true;
						 $('#pass').focus();
						return false;
						}
						else if(rpass==""){
							$("#rpass").after('<span class="error" style="color:red ">Please enter your conform password.</span>');
						}
	return true;
	
	});
	});
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
                    <li><a href="<?php echo base_url();?>">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                        <li><a href="register.php">Registration</a></li>
                            <li><a href="login.php">Login</a></li>
                            
                        </ul>
                    </li>
                    <li><a href="#">Blog</a></li> 
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </header><!--/header-->

    <section id="title" class="emerald">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1>Registration</h1>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="<?php echo base_url();?>">Home</a></li>
                        <li><a href="#">Pages</a></li>
                        <li class="active">Registration</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title-->     

    <section id="registration" class="container">
        <table border="0" align="center">
<form action="<?php echo base_url();?>home/getdetails" id="reg" method="post" enctype="multipart/form-data">
<tr>
<td><label>FirstName:</label></td>
<td><input type="text" name="fname" id="fname" class="form-control"></td>
</tr>
<tr>
<td><label>LastName:</label></td>
<td><input type="text" name="lname" id="lname" class="form-control"></td>
</tr>
<tr>
<td><label>Email:</label></td>
<td><input type="text" name="email" id="email" class="form-control"></td>
</tr>
<tr>
<td><label>PassWord:</label></td>
<td><input type="password" name="pass" id="pass" class="form-control"></td>
</tr>
<tr>
<td><label>Confirm a PassWord:</label></td>
<td><input type="password" name="rpass" id="rpass" class="form-control"></td>
</tr>
<tr>
<td><label>Birth Date:</label></td>
<td><input type="date" name="date" id="date" class="input-append date" ></td>
</tr>
<tr>
<td><label>Gender:</label></td>
<td><input type="radio" name="gender" id="gender" value="male" class="btn btn-success">male
<input type="radio" name="gender" id="gender" value="female" class="btn btn-success">female</td>
</tr>	
<tr>
<td><label>Mobile Number:</label></td>
<td><input type="text" name="phno" id="phno" class="form-control"></td>
</tr>
<tr>
<td><label>Location:</label></td>
<td>
<select name="country" id="country" class="btn dropdown-toggle">
<option value="ind">India</option>
<option value="aus">Aus</option>
<option value="usa">Usa</option>
</select></td>
</tr>
<tr>
<td><label>Profile Pic:</label></td>
<td><input type="file" name="pic" id="pic"></td>
</tr>
<tr>
<td></td>
<td align="center"><input id="button" type="submit" name="submit" value="Sign-Up" class="btn btn-success"></td>
</tr>
</form>
</table>
    </section><!--/#registration-->

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
                        <li><a href="#">About Us</a></li>
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
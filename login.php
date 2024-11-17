<?php
include('includes/config.php');

//Code for Registration 
if(isset($_POST['signup']))
{
	$fname=$_POST['fname'];
	$lname=$_POST['lname'];
	$email=$_POST['email'];
	$password=$_POST['password'];
	$contact=$_POST['contact'];
	$enc_password=$password;
	$sql=mysqli_query($con,"select id from users where email='$email'");
	$row=mysqli_num_rows($sql);
	if($row>0)
	{
		echo "<script>alert('Email id already exist with another account. Please try with other email id');</script>";
	} else{
		$msg=mysqli_query($con,"insert into users(fname,lname,email,password,contactno) values('$fname','$lname','$email','$enc_password','$contact')");

		if($msg)
		{
			echo "<script>alert('Register successfully');</script>";
		}
	}
}

// Code for login 
if(isset($_POST['login']))
{
	$password=$_POST['password'];
	$dec_password=$password;
	$useremail=$_POST['uemail'];
	$ret= mysqli_query($con,"SELECT * FROM users WHERE email='$useremail' and password='$dec_password'");
	$num=mysqli_fetch_array($ret);
	if($num>0)
	{
		$extra="dashboard.php";
		$_SESSION['login']=$_POST['uemail'];
		$_SESSION['id']=$num['id'];
		$_SESSION['name']=$num['fname'];
		$host=$_SERVER['HTTP_HOST'];
		$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
		header("location:http://$host$uri/$extra");
		exit();
	}
	else
	{
		echo "<script>alert('Invalid username or password');</script>";
		$extra="index.php";
		$host  = $_SERVER['HTTP_HOST'];
		$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
//header("location:http://$host$uri/$extra");
		exit();
	}
}

?>
<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Animal Rescue & Welfare | Home Page</title>

	<!-- Bootstrap core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="css/modern-business.css" rel="stylesheet">
	<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->


</head>

<body>

	<!-- Navigation -->
	<!-- <?php include('includes/header.php');?> -->

	 <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="index.php"><img src="images/logoNew.png" height="50"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">

                 <li class="nav-item">
              <a class="nav-link" href="login.php">Register & Login</a>
            </li>
  
  
          </ul>
        </div>
      </div>
    </nav>
	<div class="main">

				<div class="container">
					<div class="">
						<div class="facts">

							<div class="register">
								<br>
								<form name="registration" method="post" action="" enctype="multipart/form-data">
									<p>First Name </p>
									<input type="text" class="text" value=""  name="fname" required >
									<p>Last Name </p>
									<input type="text" class="text" value="" name="lname"  required >
									<p>Email Address </p>
									<input type="text" class="text" value="" name="email"  >
									<p>Password </p>
									<input type="password" value="" name="password" required>
									<p>Contact No. </p>
									<input type="text" value="" name="contact"  required>
									<div class="sign-up">
										<input type="reset" value="Reset">
										<input type="submit" name="signup"  value="Sign Up" >
										<div class="clear"> </div>
									</div>
								</form>

							</div>
						</div>
					</div>		
					<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="facts">
							<div class="login">
								<div class="buttons">


								</div>
								<form name="login" action="" method="post">
									<input type="text" class="text" name="uemail" value="" placeholder="Enter your registered email"  ><a href="#" class=" icon email"></a>

									<input type="password" value="" name="password" placeholder="Enter valid password"><a href="#" class=" icon lock"></a>

									<div class="p-container">

										<div class="submit two">
											<input type="submit" name="login" value="LOG IN" >
										</div>
										<div class="clear"> </div>
									</div>

								</form>
							</div>
						</div> 
					</div> 			        					 
					<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="facts">
							<div class="login">
								<div class="buttons">


								</div>
								<form name="login" action="" method="post">

								</form>
								<br>
								<br>
								<br>
							</div>
						</div>           	      
					</div>	
				</div>	

	<!-- Footer -->
	<?php include('includes/footer.php');?>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

<?php 
session_start();
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
		$extra="welcome.php";
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

//Code for Forgot Password

if(isset($_POST['send']))
{
	$femail=$_POST['femail'];

	$row1=mysqli_query($con,"select email,password from users where email='$femail'");
	$row2=mysqli_fetch_array($row1);
	if($row2>0)
	{
		$email = $row2['email'];
		$subject = "Information about your password";
		$password=$row2['password'];
		$message = "Your password is ".$password;
		mail($email, $subject, $message, "From: $email");
		echo  "<script>alert('Your Password has been sent Successfully');</script>";
	}
	else
	{
		echo "<script>alert('Email not register with us');</script>";	
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

</head>

<body>
	<!-- Navigation -->
	<?php include('includes/header.php');?>

	<div class="main">
		<h1>Registration and Login System</h1>
		<div class="sap_tabs">	
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><div class="top-img"><img src="images/top-note.png" alt=""/></div><span>Register</span>
						
					</li>
					<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><div class="top-img"><img src="images/top-lock.png" alt=""/></div><span>Login</span></li>
					<li class="resp-tab-item lost" aria-controls="tab_item-2" role="tab"><div class="top-img"><img src="images/top-key.png" alt=""/></div><span>Forgot Password</span></li>
					<div class="clear"></div>
				</ul>		
				
				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
						<div class="facts">
							
							<div class="register">
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
									<input type="text" class="text" name="femail" value="" placeholder="Enter your registered email" required  ><a href="#" class=" icon email"></a>
									
									<div class="submit three">
										<input type="submit" name="send" onClick="myFunction()" value="Send Email" >
									</div>
								</form>
							</div>
						</div>           	      
					</div>	
				</div>	
			</div>
		</div>
	</div>


	<?php include('includes/footer.php');?>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

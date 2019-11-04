<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Travel - Sign In</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="csslogin/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="csslogin/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script type="text/javascript" src="validate.js"></script>
</head>

<body>
	<div class="container">
	<form  method="post" name="LoginForm" onsubmit="return formValidate()" action="Signin">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">Travel</span></h1>
		</div>
		<div>
		
<%
if(request.getAttribute("status")=="success"){
	%>
	<p>registration successful</p>
<%
}
%>

<%
if(request.getAttribute("loginStatus")=="invalid"){
	%>
	<p>wrong username/password.</p>
<%
}
%>
		
		</div>
		<div class="login-box animated fadeInUp">
			
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<label for="fname">Email</label>
			<br/>
			<input type="text" id="email" name="email">
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="password" id="password" name="password">
			<br/>
			<button type="submit">Sign In <a  ></button>
			<br/><br/>
			
			<span class="right relative"><a href="Home.html" class="button1"><strong>Return</strong></a></span> 

			</div>
			</form>
			</div>
	</div>
	
    <script>
        function formValidate() {
            

            var fname = document.forms["LoginForm"]["email"].value;
			if(fname=="")
			{
					alert("Email must be filled out");
					return false;
			}
            var password = document.forms["LoginForm"]["password"].value;
			if(passworde=="")
			{
					alert("Password must be filled out");
					return false;
			}
		}

	</script>
		

        }
    
    

</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#email').focus(function() {
		$('label[for="email"]').addClass('selected');
	});
	$('#email').blur(function() {
		$('label[for="email"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>


</html>
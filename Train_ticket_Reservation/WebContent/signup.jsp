<!DOCTYPE html>
<html lang="en" >

<head>
	<script type="text/javascript" src="validate.js">
	</script>
  <meta charset="UTF-8">
  <title> Sign Up</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="csssighnup/style.css">

  
</head>

<body>

  
<div class="container">
   <form  method="post" name="signUpForm" action="Signup">
    <div class="row">
      <h4>Travel Account</h4>
      <div class="input-group input-group-icon">
        <input type="text" name="fname" id="fname" placeholder="First Name"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
	   <div class="input-group input-group-icon">
        <input type="text" name="lname" id="lname" placeholder="Last Name"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
		<div class="input-group input-group-icon">
        <input type="email" name="email" id="email" placeholder="Email Address"/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
	  <div class="input-group input-group-icon">
        <input type="text" name="nic" id="id" placeholder="NIC Number"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
	  	<div class="input-group input-group-icon">
        <input type="text" name="mobileno" id="mobileno" placeholder="000 000 0000"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>

      <div class="input-group input-group-icon">
        <input type="password" name="password" id="password" placeholder="Password"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
	     <div class="input-group input-group-icon">
        <input type="password" name="con_password" id="con_password" placeholder="Re enter Password"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
    </div>


    <div class="row">
      <h4>Terms and Conditions</h4>
      <div class="input-group">
        <input type="checkbox" id="terms"/>
        <label for="terms">I accept the terms and conditions for signing up to this service, and hereby confirm I have read the privacy policy.</label>
		<br/>
		<button type="submit">Register</button><br/><br/><br/>
	</form>
		<span class="right relative"><a href="sign_in.jsp" class="button1"><strong>Log in</strong></a></span> </div>
		<span class="right relative"><a href="index.jsp" class="button1"><strong>Return</strong></a></span> </div>
		<br/>
 </div>
    </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

 <script  src="js/index.js"></script>
<script >
    
        function formValidate() {
            

            var fname = document.forms["signUpForm"]["fname"].value;
			if(fname=="")
			{
					alert("Name must be filled out");
					return false;
			}
            var lname = document.forms["signUpForm"]["lname"].value;
			
			if(lname=="")
			{
					alert("Last Name must be filled out");
					return false;
			}
            var email = document.forms["signUpForm"]["email"].value;
			
			if(email=="")
			{
					alert("Email must be filled out");
					return false;
			}
			var nic = document.forms["signUpForm"]["nic"].value;
			
			if(nic==""||nic.length != 9||  nic < 1 || nic > 10)
			{
					alert("NIC must be filled out");
					return false;
			}
            var mobileno = document.forms["signUpForm"]["mobileno"].value;
			
			if(mobileno==""||mobileno.length != 10||  mobileno < 1 || mobileno > 10)
			{
					alert("Mobile Number must be filled out");
					return false;
			}
            var password = document.forms["signUpForm"]["password"].value;
			
			if(password=="")
			{
					alert("Password must be filled out");
					return false;
			}
            var con_password = document.forms["signUpForm"]["con_password"].value;
			
			if(con_password=="")
			{
					alert("Password must be filled out");
					return false;
			}
            
            
          


        }
    
    
</script>



</body>

</html>

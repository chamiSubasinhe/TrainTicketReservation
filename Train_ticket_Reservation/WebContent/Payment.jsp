<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<title>Payments</title>

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
	<form  method="post" name="paymentForm" onsubmit="return formValidate()">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">Travel</span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Payments</h2>
			</div>
			<label for="fname">FIRST NAME</label>
			<br/>
			<input type="text" id="fname">
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="password" id="password">
			<br/>
			<div>
			<input type="radio" name="payment-method" value="card" id="payment-method-card" checked="true"/>
			<label for="payment-method-card"><span><i class="fa fa-cc-visa"></i>Credit Card</span></label>
			<input type="radio" name="payment-method" value="paypal" id="payment-method-paypal"/>
			<label for="payment-method-paypal"> <span><i class="fa fa-cc-paypal"></i>Paypal</span></label>
			</div>
			<label for="Card Number">Card Number</label>
			<br/>
			<input type="text" id="cardNumber">
			</br>
			<button type="submit">Comfirm purches</button>
			<br/><br/>
			<span class="right relative"><a href="book.jsp" class="button1"><strong>Return</strong></a></span> </div>
			</form>
			</div>
		
		
		<script type="text/javascript">
    
        function formValidate() {
            

            var fname = document.forms["paymentForm"]["fname"].value;
						if(fname=="")
			{
					alert("Name must be filled out");
					return false;
			}
			var password = document.forms["paymentForm"]["password"].value;
						if(password=="")
			{
					alert("Password must be filled out");
					return false;
			}
            var cardNumber = document.forms["paymentForm"]["cardNumber"].value;
						if(cardNumber==""|| nic.length != 9)
			{
					alert("Card Number must be filled out");
					return false;
			}
            
        }
    
    
</script>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>

</html>


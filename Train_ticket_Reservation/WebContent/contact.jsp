<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contacts</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="validate.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page6">
	<div class="main">
		<!--header -->
		<header>
		<div class="wrapper">
			<h1>
				<a href="Home.html" id="logo">AirLines</a>
			</h1>
			<span id="slogan">Fast, Frequent &amp; Safe Travels</span>
			<nav id="top_nav">
			<ul>
				<li><a href="index.jsp" class="nav1">Home</a></li>
				<li><a href="sign_in.jsp" class="nav2">Sign In</a></li>
				<li><a href="signup.jsp" class="nav2">Sign Up</a></li>
			</ul>
			</nav>
		</div>
		<nav>
		<ul id="menu">
			<li><a href="index.jsp"><span><span>Home</span></span></a></li>
			<li><a href="Tickets.jsp"><span><span>Tickets</span></span></a></li>
			<%
				if (session.getAttribute("loginStatus") != null) {
			%>
			<li><a href="book.jsp"><span><span>Book</span></span></a></li>
			<%
				}
			%>
			<li><a href="Aboutus.jsp"><span><span>About Us</span></span></a></li>
			<li><a href="Search.jsp"><span><span>Search</span></span></a></li>
			<li id="menu_active" class="end"><a href="contact.jsp"><span><span>Contact</span></span></a></li>
		</ul>
		</nav> </header>
		<!-- / header -->
		<!--content -->
		<section id="content">
		<div class="wrapper pad1">
			<article class="col1">
			<div class="box1">
				<h2 class="top">Contact Us</h2>
				<div class="pad">
					<div class="wrapper pad_bot1">
						<p class="cols pad_bot2">
							<strong>Country:<br> City:<br> Address:<br>
								Email:
							</strong>
						</p>
						<p class="color1 pad_bot2">
							Sri lanka<br> Kandy<br> Peradeniya rd 56<br> <a
								href="#">Trains@gmail.com</a>
						</p>
					</div>
				</div>


			</div>
			</article>
			<article class="col2">
			<h3 class="pad_top1">Contact Form</h3>
			<form id="ContactForm" action="Contact" method="get">
				<div>
					<div class="wrapper">
						<span>Name:</span> <input type="text" name="name" id="name" class="input">
					</div>
					<div class="wrapper">
						<span>Email:</span> <input type="text" name="email"  id="name" class="input">
					</div>
					<div class="textarea_box">
						<span>Message:</span>
						<textarea name="textarea" id="message" class="input"cols="1" rows="1"></textarea>
					</div>
					<a href="#" class="button1"><strong>Send</strong></a> <a href="#"
						class="button1" button type="reset" value="reset"><strong>Reset</strong></a></button>
				</div>
			</form>
			</article>
		</div>
		</section>
		<!--content end-->
		<!--footer -->
		<footer>
		<div class="wrapper">
			<ul id="icons">
				<li><a href="facebook.html" class="normaltip"><img
						src="images/icon1.jpg" alt=""></a></li>
				<li><a href="Booking.html" class="normaltip"><img
						src="images/icon2.jpg" alt=""></a></li>
				<li><a href="Instagram.html" class="normaltip"><img
						src="images/icon3.jpg" alt=""></a></li>
				<li><a href="Twitter.html" class="normaltip"><img
						src="images/icon4.jpg" alt=""></a></li>
				<li><a href="TripAdvisor.html" class="normaltip"><img
						src="images/icon5.jpg" alt=""></a></li>
				<li><a href="travellanka.html" class="normaltip"><img
						src="images/icon6.jpg" alt=""></a></li>
			</ul>
			<div class="links">
				Copyright &copy; <a href="#"></a> All Rights Reserved<br>

			</div>
		</footer>
		<!--footer end-->
	</div>
	<script type="text/javascript">
		Cufon.now();
	</script>
	<script type="text/javascript">
		function formValidate() {

			var fname = document.forms["signUpForm"]["fname"].value;

			var email = document.forms["signUpForm"]["email"].value;

			if (isAlphebatic(fname))

				return true;
			else
				return false;

		}
	</script>

</body>
</html>
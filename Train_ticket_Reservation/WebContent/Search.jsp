<!DOCTYPE html>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.Ticket"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Train"%>
<html lang="en">
<head>
<title>Search</title>
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
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page3">
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
												 <% if(session.getAttribute("loginStatus")!=null){ %>
        <li><a href="book.jsp"><span><span>Book</span></span></a></li>
        <%} %>
					<li><a href="Aboutus.jsp"><span><span>About
									Us</span></span></a></li>
		
					<li id="menu_active"><a href="Search.jsp"><span><span>Search</span></span></a></li>
					<li class="end"><a href="contact.jsp"><span><span>Contact</span></span></a></li>
				</ul>
			</nav>
		</header>
		<!-- / header -->
		<!--content -->
		<section id="content">
			<div class="wrapper pad1">
				<article class="col1">
					<div class="box1">
						<h2 class="top">Hot Offers of the Week</h2>
						<div class="pad">
							><br> <strong>Colombo</strong><br>
							<ul class="pad_bot1 list1">
								<li><span class="right color1">from Rs 130.-</span><a
									href="book.html">Kandy</a></li>
								<li><span class="right color1">from Rs 140.-</span><a
									href="book.html">Galle</a></li>
							</ul>
							<strong>Kandy</strong><br>
							<ul class="pad_bot2 list1">
								<li><span class="right color1">from Rs 130.-</span><a
									href="book.html">Colombo</a></li>
								<li><span class="right color1">from Rs 160.-</span><a
									href="book.html">Elle</a></li>
								<li><span class="right color1">from Rs 401.-</span><a
									href="book.html">Jaffna</a></li>
							</ul>
							<strong>Galle</strong><br>
							<ul class="pad_bot2 list1">
								<li><span class="right color1">from Rs 140.-</span><a
									href="book.html">Colombo</a></li>
							</ul>

							<strong>Koggala</strong><br>
							<ul class="pad_bot1 list1">
								<li><span class="right color1">from Rs 146.-</span><a
									href="book.html">Colombo</a></li>
							</ul>
						</div>
					</div>
				</article>
				<article class="col2">


					<div class="tabs2">
						<ul class="nav">
							<li class="selected"><a href="#Flight"> Searching
									<li>
						</ul>
						<div class="content">
						
						
						
							<div class="tab-content" id="Flight">
							
								<form id="form_5" action="#" class="form_5" method="post">

									<div>
									<table style="border: 1px solid black;">
									<tr>
									<th>ticket id</th>
									<th>name</th>
									<th>from</th>
									<th>to</th>
									<th>total</th>
									</tr>
									<%
									if(session.getAttribute("searchTicketList")!=null){
										List<Ticket> ticketList = (List<Ticket>)session.getAttribute("searchTicketList");
										
										for(int i=0; i<ticketList.size() ;i++){
											Ticket ticket = ticketList.get(i);

											%>
											<tr>
											<td><%=ticket.getTicketid() %></td>
											<td><%=ticket.getName() %></td>
											<td><%=ticket.getFrom() %></td>
											<td><%=ticket.getTo() %></td>
											<td><%=ticket.getTotalPrice() %></td>
											</tr>
											
											<%
										}
									}
									%>
									
									</table>
									</div>
									
									<div class="pad">
									
										<div class="wrapper under">
											<div class="col1">
												<a href="#" class="help"></a>
											</div>
											<div class="row">
												<span class="left">My Reservation</span> <input type="text"
													class="input" value="TicketID"> <span
													class="right relative"><a href="Myticket.html"
													class="button1"><strong>Proceed</strong></a></span>
											</div>
											<a href="#" class="help"></a>
										</div>
										<div class="row">
											<span class="left">Search available trains</span> <input
												type="text" class="input" value="date"> <span
												class="right relative"><a href="" class="button1"><strong>Proceed</strong></a></span>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				

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
		jQuery(document).ready(function($) {
			$('.form_5').jqTransform({
				imgPath : 'jqtransformplugin/img/'
			});
		});
		$(document).ready(function() {
			tabs2.init();
		});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page5">
<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="Home.html" id="logo">AirLines</a></h1>
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
        <li ><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="Tickets.jsp"><span><span>Tickets</span></span></a></li>
         <% if(session.getAttribute("loginStatus")!=null){ %>
        <li><a href="book.jsp"><span><span>Book</span></span></a></li>
        <%} %>
        <li id="menu_active"><a href="Aboutus.jsp"><span><span>About Us</span></span></a></li>
		<li><a href="Search.jsp"><span><span>Search</span></span></a></li>
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
          <div class="pad"> <strong>Colombo</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from Rs 130.-</span><a href="book.html">Kandy</a></li>
              <li><span class="right color1">from Rs 140.-</span><a href="book.html">Galle</a></li>
            </ul>
            <strong>Kandy</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from Rs 130.-</span><a href="book.html">Colombo</a></li>
              <li><span class="right color1">from Rs 160.-</span><a href="book.html">Elle</a></li>
              <li><span class="right color1">from Rs 401.-</span><a href="book.html">Jaffna</a></li>
            </ul>
            <strong>Galle</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from Rs 140.-</span><a href="book.html">Colombo</a></li>
            </ul>
            <strong>Koggala</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from Rs 146.-</span><a href="book.html">Colombo</a></li>
            </ul>

          </div>
        </div>
      </article>
      <article class="col2">
        <h3 class="pad_top1">About Us</h3>
        <div class="wrapper pad_bot2">
          <figure class="left marg_right1"><img src="images/page5_img1.jpg" alt=""></figure>
          <p><strong>Things that motivate us in life will lead us to do what we want if we are passionate and determined. Love for art and literature combined, an indomitable force that eventually resulted in a stimulating experience! ‘Travel Lanka’ was such an inspiration, a travel guide that was born from the heart!</p>
        </div>
        <div class="wrapper pad_bot2">
          <figure class="left marg_right1"><img src="images/page5_img2.jpg" alt=""></figure>
          <p>With a vision to promote travel & tourism as a ‘way of living life’, while projecting the country as an exotic destination with the fascinating facets of Sri Lanka artfully captured, ‘Travel Lanka’ is a beautiful concept first brought to life by a veteran of the advertising and publishing world.</p>
        </div>
        <div class="wrapper"> <a href="Overview.html" class="button1 right"><strong>Read More</strong></a> </div>
  
        <div class="wrapper">
          <div class="cols">
            <ul class="list1">

            </ul>
          </div>
          <div class="cols pad_left1">
            <ul class="list1">

            </ul>
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
        <li><a href="facebook.html" class="normaltip"><img src="images/icon1.jpg" alt=""></a></li>
        <li><a href="Booking.html" class="normaltip"><img src="images/icon2.jpg" alt=""></a></li>
        <li><a href="Instagram.html" class="normaltip"><img src="images/icon3.jpg" alt=""></a></li>
        <li><a href="Twitter.html" class="normaltip"><img src="images/icon4.jpg" alt=""></a></li>
        <li><a href="TripAdvisor.html" class="normaltip"><img src="images/icon5.jpg" alt=""></a></li>
        <li><a href="travellanka.html" class="normaltip"><img src="images/icon6.jpg" alt=""></a></li>
      </ul>
      <div class="links">Copyright &copy; <a href="#"></a> All Rights Reserved<br>

    </div>
  </footer>
  <!--footer end-->
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>
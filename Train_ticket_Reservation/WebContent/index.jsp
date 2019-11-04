
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
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
<body id="page1">

<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="Home.html" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Travels</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index,jsp" class="nav1">Home</a></li>
          <li><a href="sign_in.jsp" class="nav2">Sign In</a></li>
          <li><a href="signup.jsp" class="nav2">Sign Up</a></li>
        </ul>
      </nav>
    </div>
    <nav>
      <ul id="menu">
        <li id="menu_active"><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="Tickets.jsp"><span><span>Tickets</span></span></a></li>
        <% if(session.getAttribute("loginStatus")!=null){ %>
        <li><a href="book.jsp"><span><span>Book</span></span></a></li>
        <%} %>
        <li><a href="Aboutus.jsp"><span><span>About Us</span></span></a></li>
		<li><a href="Search.jsp"><span><span>Search</span></span></a></li>
        <li class="end"><a href="contact.jsp"><span><span>Contact</span></span></a></li>
      </ul>
    </nav>
  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="for_banners">
      <article class="col1">
        <div class="tabs">
     </div>
      </article>
          </div>
    <div class="wrapper pad1">
      <article class="col1">
        <div class="box1">
          <h2 class="top">Offers of the Week </h2>
          <div class="pad"> <strong>From Colombo</strong><br>
            <ul class="pad_bot1 list1">
              <li> <span class="right color1">from Rs 143.-</span> <a href="book.html">Kandy</a> </li>
            </ul>
            <strong>From Kandy </strong><br>
            <ul class="pad_bot1 list1">
              <li> <span class="right color1">from Rs 143.-</span> <a href="book.html">Cololmbo</a> </li>
              <li> <span class="right color1">from Rs 109.-</span> <a href="book.html">Nuwara Eliya</a> </li>
            </ul>
            <strong>From Elle</strong><br>
            <ul class="pad_bot2 list1">
              <li> <span class="right color1">from Rs 100.-</span> <a href="book.html">Trinco</a> </li>
              <li> <span class="right color1">from Rs 112.-</span> <a href="book.html">Kandy</a> </li>
              <li> <span class="right color1">from Rs 88.-</span> <a href="book.html">Anuradhapura</a> </li>
            </ul>
          </div>
          <div class="pad"> <strong>From Trinco</strong><br>
            <ul class="pad_bot2 list1">
              <li class="pad_bot1"> <span class="right color1">from Rs 122.-</span> <a href="book2.html">Anuradhapura</a> </li>
            </ul>
          </div>
        </div>
      </article>
      <article class="col2">
        <h3>About Our Trains<span></span></h3>
        <div class="wrapper">
          <article class="cols">
            <figure><img src="images/page1_img1.jpg" alt="" class="pad_bot2"></figure>
            <p class="pad_bot1"><strong></strong></p>
            <p>Travels is a major transport service provider and is the only rail transport organization in the country. SLR transports both passenger and freight. At its inception, railway was carrying more freight than passenger. But today, it is passenger oriented. SLR's market share for passenger transport is about 6.0 % and about 0.7 % for goods transport. <a href="index.html">About</a>, <a href="offers.html">Offers</a>, <a href="book.html">Book</a>, <a href="services.html">Services</a>, <a href="safety.html">Safety</a>, <a href="contacts.html">Contacts</a>.</p>
          </article>
          <article class="cols pad_left1">
            <figure><img src="images/page1_img2.jpg" alt="" class="pad_bot2"></figure>
            <p class="pad_bot1"><strong></strong></p>
            <p>In Sri Lanka, the service provided by SLR in carrying the daily commuters to their workplaces, is inevitable. Sri Lanka Railway operates approximately 396 trains which include 67 Long-Distance and 16 Intercity trains and carries about 3.72 Million passengers daily.</p>
          </article>
        </div>
        <a href="#" class="button1"><strong>Read More</strong></a> </article>
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
<script type="text/javascript">
$(document).ready(function () {
    tabs.init();
});
jQuery(document).ready(function ($) {
    $('#form_1, #form_2, #form_3').jqTransform({
        imgPath: 'jqtransformplugin/img/'
    });
});
$(window).load(function () {
    $('#slider').nivoSlider({
        effect: 'fade', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft' 
        slices: 15,
        animSpeed: 500,
        pauseTime: 6000,
        startSlide: 0, //Set starting Slide (0 index)
        directionNav: false, //Next & Prev
        directionNavHide: false, //Only show on hover
        controlNav: false, //1,2,3...
        controlNavThumbs: false, //Use thumbnails for Control Nav
        controlNavThumbsFromRel: false, //Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', //Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
        keyboardNav: true, //Use left & right arrows
        pauseOnHover: true, //Stop animation while hovering
        manualAdvance: false, //Force manual transitions
        captionOpacity: 1, //Universal caption opacity
        beforeChange: function () {},
        afterChange: function () {},
        slideshowEnd: function () {} //Triggers after all slides have been shown
    });
});
</script>
</body>
</html>
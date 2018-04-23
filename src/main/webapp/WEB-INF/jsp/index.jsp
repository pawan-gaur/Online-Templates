<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=egde">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

<title>BusBooking | Home</title>

<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet'
	type='text/css'>
<link href="static/css/font-awesome.css" rel="stylesheet">

<!-- Custom Theme files -->
<script src="static/js/jquery-1.12.0.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<!--animate-->
<link href="static/css/animate.css" rel="stylesheet" type="text/css"
	media="all">
<script src="static/js/wow.min.js"></script>

</head>
<body>
	<!-- top-header -->
	<div class="top-header">
		<div class="container">
			<ul class="tp-hd-lft wow fadeInLeft" data-wow-delay=".5s">
				<li class="hm"><a href="/index"><i class="fa fa-home"></i></a></li>
				<li class="prnt"><a href="javascript:window.print()">Print/SMS
						Ticket</a></li>

			</ul>
			<ul class="tp-hd-rgt wow fadeInRight" data-wow-delay=".5s">
				<li class="tol">Toll Number : 18001802477</li>
				<li class="sig"><a href="#" data-toggle="modal"
					data-target="#myModal">Sign Up</a></li>
				<li class="sigi"><a href="#" data-toggle="modal"
					data-target="#myModal4">/ Sign In</a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--- /top-header ---->
	<!--- header ---->
	<div class="header">
		<div class="container">
			<div class="logo wow fadeInDown" data-wow-delay=".5s">
				<a href="/index">Bus <span>Booking</span></a>
			</div>
			<div class="bus wow fadeInUp" data-wow-delay=".5s">
				<a href="/index" class="buses active">BUSES</a> <a
					href="hotels.html">HOTELS</a>
			</div>
			<div class="lock fadeInDown" data-wow-delay=".5s">
				<li><i class="fa fa-lock"></i></li>
				<li><div class="securetxt">
						SAFE &amp; SECURE<br> ONLINE PAYMENTS
					</div></li>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--- /header ---->
	<!--- footer-btm ---->
	<div class="footer-btm wow fadeInLeft" data-wow-delay=".5s">
		<div class="container">
			<div class="navigation">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil"
						id="bs-example-navbar-collapse-1">
						<nav class="cl-effect-1">
							<ul class="nav navbar-nav">
								<li><a href="#">About</a></li>
								<li><a href="#">Faq</a></li>
								<li><a href="#">Apps</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Travels</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Agent Registration</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Contact Us</a></li>
								<li>Need Help?<a href="#" data-toggle="modal"
									data-target="#myModal3"> / Write Us </a>
								</li>
								<div class="clearfix"></div>
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<!--- /footer-btm ---->
	<!--- banner ---->
	<div class="banner">
		<div class="container">
			<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
				style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
				Green Wheels - Best in Class for Travel & Hotels</h1>
		</div>
	</div>
	<div class="container">
		<div class="col-md-5 bann-info1 wow fadeInLeft animated"
			data-wow-delay=".5s">
			<i class="fa fa-columns"></i>
			<h3>WORLD'S MOST TRAVEL BRAND</h3>
		</div>
		<div class="col-md-7 bann-info wow fadeInRight animated"
			data-wow-delay=".5s">
			<h2>Online Tickets with Zero Booking Fees</h2>
			<div class="ban-top">
				<div class="bnr-left">
					<label class="inputLabel">From</label> <input class="city"
						type="text" value="Enter a city" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter a city';}"
						required=>
				</div>
				<div class="bnr-left">
					<label class="inputLabel">To</label> <input class="city"
						type="text" value="Enter a city" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter a city';}"
						required=>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="ban-bottom">
				<div class="bnr-right">
					<label class="inputLabel">Date of Journey</label> <input
						class="date" id="datepicker" type="text" value="dd-mm-yyyy"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'dd-mm-yyyy';}"
						required=>
				</div>
				<div class="bnr-right">
					<label class="inputLabel">Date of Return<span class="opt">&nbsp;(Optional)</span></label>
					<input class="date" id="datepicker1" type="text" value="dd-mm-yyyy"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'dd-mm-yyyy';}"
						required=>
				</div>
				<div class="clearfix"></div>
				<!---start-date-piker---->
				<link rel="stylesheet" href="static/css/jquery-ui.css" />
				<script src="static/js/jquery-ui.js"></script>
				<script>
					$(function() {
						$("#datepicker,#datepicker1").datepicker();
					});
				</script>
				<!---/End-date-piker---->
			</div>
			<div class="sear">
				<form action="bus.html">
					<button class="seabtn">Search Buses</button>
				</form>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--- /banner ---->
	<!--- rupes ---->
	<div class="container">
		<div class="rupes">
			<div class="col-md-4 rupes-left wow fadeInDown animated animated"
				data-wow-delay=".5s"
				style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
				<div class="rup-left">
					<a href="offers.html"><i class="fa fa-inr"></i></a>
				</div>
				<div class="rup-rgt">
					<h3>UP TO USD. 50 OFF</h3>
					<h4>
						<a href="offers.html">TRAVEL SMART</a>
					</h4>
					<p>
						CODE:YBMAR12<br>Book Using Pay Money
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 rupes-left wow fadeInDown animated animated"
				data-wow-delay=".5s"
				style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
				<div class="rup-left">
					<a href="offers.html"><i class="fa fa-h-square"></i></a>
				</div>
				<div class="rup-rgt">
					<h3>UP TO 70% OFF</h3>
					<h4>
						<a href="offers.html">ON HOTELS ACROSS WORLD</a>
					</h4>
					<p>Offer CODE:YBMAR12</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 rupes-left wow fadeInDown animated animated"
				data-wow-delay=".5s"
				style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
				<div class="rup-left">
					<a href="offers.html"><i class="fa fa-mobile"></i></a>
				</div>
				<div class="rup-rgt">
					<h3>FLAT USD. 50 OFF</h3>
					<h4>
						<a href="offers.html">BUS APP OFFER</a>
					</h4>
					<p>
						book via the yellow Bus App<br>CODE:YBMAR12
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--- /rupes ---->
</body>
</html>
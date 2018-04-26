<%@ include file = "common/header.jsp" %>


<!--- banner ---->
<div class="banner">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
			Bus Booking - Best in Class for Travel & Hotels</h1>
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
				<label class="inputLabel">To</label> <input class="city" type="text"
					value="Enter a city" onfocus="this.value = '';"
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
<%@ include file = "common/offer.jsp" %>
<!--- /rupes ---->
<hr>
<!---holiday---->
<div class="container">
	<div class="holiday">
		<div class="col-md-3 holiday-left animated wow fadeInUp"
			data-wow-duration="1200ms" data-wow-delay="500ms"
			style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
			<img src="static/images/4.jpg" class="img-responsive" alt="">
		</div>
		<div class="col-md-6 holiday-mid animated wow fadeInUp"
			data-wow-duration="1200ms" data-wow-delay="500ms"
			style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
			<h3>Travel Holiday Packages</h3>
			<p>Private Guide and Driver in any language and in any departure
				date. For more information please contact us....</p>
		</div>
		<div class="col-md-3 holiday-left animated wow fadeInUp"
			data-wow-duration="1200ms" data-wow-delay="500ms"
			style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
			<img src="static/images/5.jpg" class="img-responsive" alt="">
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!---/holiday---->
<!---track---->
<div class="container">
	<div class="track">
		<div class="col-md-6 track-right wow fadeInLeft" data-wow-delay=".5s">
			<a href="track.html"><img src="static/images/map1.png"
				class="img-responsive" alt=""></a>
		</div>
		<div class="col-md-6 track-left wow fadeInRight" data-wow-delay=".5s">
			<h3>TRACK MY BUS</h3>
			<p>First of its own kind,bus tracking feature on bus</p>
			<a href="track.html" class="learn">Learn More</a>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /track ---->
<!--- routes ---->
<div class="routes">
	<div class="container">
		<div class="col-md-4 routes-left wow fadeInRight" data-wow-delay=".5s">
			<div class="rou-left">
				<a href="#"><i class="fa fa-truck"></i></a>
			</div>
			<div class="rou-rgt wow fadeInDown" data-wow-delay=".5s">
				<h3>2200</h3>
				<p>ROUTES</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-4 routes-left">
			<div class="rou-left">
				<a href="#"><i class="fa fa-user"></i></a>
			</div>
			<div class="rou-rgt">
				<h3>490</h3>
				<p>BUS OPERATORS</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-4 routes-left wow fadeInRight" data-wow-delay=".5s">
			<div class="rou-left">
				<a href="#"><i class="fa fa-ticket"></i></a>
			</div>
			<div class="rou-rgt">
				<h3>60,000+</h3>
				<p>TICKETS SOLD</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /routes ---->

<%@ include file = "common/footer.jsp" %>
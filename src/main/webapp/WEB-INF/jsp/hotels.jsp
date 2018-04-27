<%@ include file="common/header.jsp"%>

<!--- banner ---->
<div class="banner-2 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
			Bus Booking - Best in Class for Travel & Hotels</h1>
	</div>
</div>
<div class="container">
	<div class="col-md-7 bann-info wow fadeInRight animated"
		data-wow-delay=".5s">
		<h2>Online Tickets with Zero Booking Fees</h2>
		<div class="ban-top">
			<div class="bnr-left">
				<input class="city" type="text"
					value="Enter City, Area or Hotel Name..."
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Enter City, Area or Hotel Name...';}"
					required=>
			</div>

			<div class="clearfix"></div>
		</div>
		<div class="ban-bottom">
			<div class="bnr-right">
				<form>
					<input class="date" id="datepicker" type="text" value="dd-mm-yyyy"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'dd-mm-yyyy';}"
						required=>
			</div>
			<div class="bnr-right">

				<input class="date" id="datepicker1" type="text" value="dd-mm-yyyy"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'dd-mm-yyyy';}"
					required=>
			</div>
			</form>
			<div class="clearfix"></div>
			<!---start-date-piker---->
			<link rel="stylesheet" href="css/jquery-ui.css" />
			<script src="js/jquery-ui.js"></script>
			<script>
				$(function() {
					$("#datepicker,#datepicker1").datepicker();
				});
			</script>
			<!---/End-date-piker---->
		</div>
		<div class="sear">
			<form action="details.html">
				<button class="seabtn">Search Hotels</button>
			</form>
		</div>
	</div>
	<div class="clearfix"></div>
</div>
<!--- /banner ---->
<!--- rupes ---->
<%@ include file="common/offer.jsp"%>
<!--- /rupes ---->
<hr>
<!--- hotels-top ---->
<div class="hotels-top">
	<div class="container">
		<h3>Hotel Rooms</h3>
		<div class="col-md-6 hotels-right wow fadeInLeft animated"
			data-wow-delay=".5s">
			<a href="siglepage.html">
				<div class="view1 view1-sixth">
					<img src="static/images/h5.jpg" class="img-responsive" alt="">
					<div class="mask">
						<h2>Shreyas</h2>
					</div>
				</div>
			</a>
		</div>
		<div class="col-md-6 hotels-right wow fadeInRight animated"
			data-wow-delay=".5s">
			<a href="siglepage.html">
				<div class="view1 view1-sixth">
					<img src="static/images/h1.jpg" class="img-responsive" alt="">
					<div class="mask">
						<h2>Leela hotel - Delhi</h2>
					</div>
				</div>
			</a>
		</div>
		<div class="clearfix"></div>
		<div class="hotl-top">
			<div class="col-md-4 hotels-left wow fadeInLeft animated"
				data-wow-delay=".5s">
				<a href="siglepage.html">
					<div class="view1 view1-sixth">
						<img src="static/images/h3.jpg" class="img-responsive" alt="">
						<div class="mask">
							<h2>Hotel-Claridges - New-Delhi</h2>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4 hotels-left wow fadeInUp animated"
				data-wow-delay=".5s">
				<a href="siglepage.html">
					<div class="view1 view1-sixth">
						<img src="static/images/h2.jpg" class="img-responsive" alt="">
						<div class="mask">
							<h2>The Oberoi Udaivilas - Udaipur</h2>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4 hotels-left wow fadeInRight animated"
				data-wow-delay=".5s">
				<a href="siglepage.html">
					<div class="view1 view1-sixth">
						<img src="static/images/h4.jpg" class="img-responsive" alt="">
						<div class="mask">
							<h2>Oberoi Amarvilas - Agra</h2>
						</div>
					</div>
				</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--- /hotels-top ---->
<!--- hotels-top ---->
<div class="hotels-top">
	<div class="container">
		<h3>Touring Cities</h3>
		<div class="col-md-4 hotels-left wow fadeInLeft animated"
			data-wow-delay=".5s">
			<a href="details.html"><div class="view1 view1-sixth">
					<img src="static/images/c4.jpg" class="img-responsive" alt="">
					<div class="mask">
						<h2>Hawa Mahal - Jaipur</h2>
					</div>
				</div> </a>
		</div>
		<div class="col-md-4 hotels-left wow fadeInUp animated"
			data-wow-delay=".5s">
			<a href="details.html">
				<div class="view1 view1-sixth">
					<img src="static/images/c5.jpg" class="img-responsive" alt="">
					<div class="mask">
						<h2>Qutub Minar - Delhi</h2>
					</div>
				</div>
			</a>
		</div>
		<div class="col-md-4 hotels-left wow fadeInRight animated"
			data-wow-delay=".5s">
			<a href="details.html">
				<div class="view1 view1-sixth">
					<img src="static/images/c3.jpg" class="img-responsive" alt="">
					<div class="mask">
						<h2>Golden Temple - Amritsar</h2>
					</div>
				</div>
			</a>
		</div>
		<div class="clearfix"></div>
		<div class="hotl-top">
			<div class="col-md-6 hotels-right wow fadeInLeft animated"
				data-wow-delay=".5s">
				<a href="details.html">
					<div class="view1 view1-sixth">
						<img src="static/images/c1.jpg" class="img-responsive" alt="">
						<div class="mask">
							<h2>Akshardham - Delhi</h2>
						</div>
					</div>
				</a>
			</div>
			<div
				class="col-md-6 hotels-right portfolio-item slideanim slide wow fadeInRight animated"
				data-wow-delay=".5s">
				<a href="details.html">
					<div class="view1 view1-sixth">
						<img src="static/images/c2.jpg" class="img-responsive" alt="">
						<div class="mask">
							<h2>Fort - Jaipur</h2>
						</div>
					</div>
				</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--- /hotels-top ---->
<!--- routes ---->
<div class="routes">
	<div class="container">
		<div class="col-md-4 hotes-left wow fadeInRight animated"
			data-wow-delay=".5s">
			<h3>1,1s00 +</h3>
			<p>Cities with Hotels</p>
		</div>
		<div class="col-md-4 hotes-left wow fadeInUp animated"
			data-wow-delay=".5s">
			<h3>12,000 +</h3>
			<p>Happy Customers</p>
		</div>
		<div class="col-md-4 hotes-left wow fadeInRight animated"
			data-wow-delay=".5s">
			<h3>2,000+</h3>
			<p>Hotel Across India</p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /routes ---->

<%@ include file="common/footer.jsp"%>
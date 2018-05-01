<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="common/header.jsp"%>

<!--- bus-tp ---->
<div class="bus-tp">
	<div class="container">
		<p>Fare starts from : Rs. 499 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
		<p>DoJ : ${busSearch.doj}</p>
		<p>&nbsp; | DoR : ${busSearch.dor}</p>
		<h2>Buses : ${busSearch.source} to ${busSearch.destination}</h2>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /bus-tp ---->
<!--- bus-btm ---->
<div class="bus-btm">
	<div class="container">
		<ul>
			<li class="trav"><a href="#">Travels</a></li>
			<li class="dept"><a href="#">Depart</a></li>
			<li class="arriv"><a href="#">Arrive</a></li>
			<li class="seat"><a href="#">Seats</a></li>
			<li class="fare"><a href="#">Fare</a></li>
			<div class="clearfix"></div>
		</ul>
	</div>
</div>
<!--- /bus-btm ---->
<!--- bus-mid ---->
<div class="bus-midd wow zoomIn animated animated" data-wow-delay=".5s"
	style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
	<div class="container">
		<!--- ul-first  ---->
		<c:forEach var="busDealer" items="${busDealer}">

			<ul class="first">
				<li class="trav">
					<div class="bus-ic">
						<img src="static/images/bus.png" class="img-responsive" alt="">
					</div>
					<div class="bus-txt">
						<!-- <h4>Himachal Express Tourist</h4> -->
						<h4>${busDealer.name}</h4>
						<p>A/C Sleeper (2+2)</p>
					</div>
					<div class="clearfix"></div>
				</li>
				<li class="dept">
					<div class="bus-ic1">
						<i class="fa fa-clock-o"></i>
					</div>
					<div class="bus-txt1">
						<h4>
							<a href="#">${busDealer.depart}</a>
						</h4>
						<p>Duration</p>
					</div>
					<div class="clearfix"></div>
				</li>
				<li class="arriv">
					<div class="bus-txt2">
						<h4>
							<a href="#">${busDealer.arrive}</a>
						</h4>
						<p>10:00 Hrs</p>
					</div>
				</li>
				<li class="seat">
					<div class="bus-ic3">
						<img src="static/images/seat.png" class="img-responsive" alt="">
					</div>
					<div class="bus-txt3">
						<h4>${busDealer.seats} seats</h4>
						<p>Window 6</p>
					</div>
					<div class="clearfix"></div>
				</li>
				<li class="fare">
					<div class="bus-txt4">
						<h5>Rs. ${busDealer.fee}</h5>
							<a href="#img1" class="view">Book Ticket</a>
							<div class="lightbox" id="img1">
								<div class="box">
									<a class="close" href="#">X</a>
									<div class="set-left">
										<ul class="set">
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-4.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-4.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-5.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-5.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-2.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-2.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<div class="clearfix"></div>
										</ul>
										<ul class="set-1">
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<div class="clearfix"></div>
										</ul>
										<ul class="set">
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-3.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-3.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-4.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-4.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-5.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-3.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-3.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-3.png"
													class="img-responsive" alt=""></a></li>
											<li><a href="#"><img src="static/images/seat-1.png"
													class="img-responsive" alt=""></a></li>
											<div class="clearfix"></div>
										</ul>
									</div>
									<div class="set-right">
										<ul class="ste1">
											<li><img src="static/images/seat-2.png"
												class="img-responsive" alt=""></li>
											<li><p class="aval">Available Seat</p></li>
											<div class="clearfix"></div>
										</ul>
										<ul class="ste1">
											<li><img src="static/images/seat-3.png"
												class="img-responsive" alt=""></li>
											<li><p class="aval">Reserved for Ladies</p></li>
											<div class="clearfix"></div>
										</ul>
										<ul class="ste1">
											<li><img src="static/images/seat-4.png"
												class="img-responsive" alt=""></li>
											<li><p class="aval">Selected Seat</p></li>
											<div class="clearfix"></div>
										</ul>
										<ul class="ste1">
											<li><img src="static/images/seat-5.png"
												class="img-responsive" alt=""></li>
											<li><p class="aval">Booked by Gents</p></li>
											<div class="clearfix"></div>
										</ul>
										<ul class="ste1">
											<li><img src="static/images/seat-3.png"
												class="img-responsive" alt=""></li>
											<li><p class="aval">Booked by Ladies</p></li>
											<div class="clearfix"></div>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
					</div>
				</li>
				<div class="clearfix"></div>
			</ul>
		</c:forEach>
		<!--- /ul-first  ---->
	</div>
</div>
<!--- /bus-midd ---->



<%@ include file="common/footer.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="common/header.jsp"%>

<!--- bus-tp ---->
<div class="bus-tp">
	<div class="container">
		<p>Fare starts from : Rs. 499
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
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
					<input type="hidden" value="${busDealer.id}" id="busId">
					<div class="bus-ic">
						<img src="static/images/bus.png" class="img-responsive" alt="">
					</div>
					<div class="bus-txt">
						<!-- <h4>Himachal Express Tourist</h4> -->
						<h4>${busDealer.agencyname}</h4>
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
						<a href="#" class="view" data-toggle="modal" data-busid = "${busDealer.id}"
							data-target="#myModal5" onclick="setValue(this)">Book Ticket</a>

					</div>
				</li>
				<div class="clearfix"></div>
			</ul>
		</c:forEach>
		<input id="selectedBus" type="hidden"  value="">
		<!--- /ul-first  ---->
	</div>
</div>
<!--- /bus-midd ---->
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<section>
				<div class="modal-body modal-spa">
					<div class="writ" id="ticketSuccess">
						<h4>Enter Below Details to Confirm Your Ticket</h4>
						<form>
							<ul>
								<li class="na-me"><input class="name" type="text" id="name"
									value="Name" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Name';}"
									required=""></li>
								<li class="na-me"><input class="Email" type="text"
									id="email" value="Email" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Email';}"
									required=""></li>
								<li class="na-me"><input class="number" type="text"
									id="mobile" value="Mobile Number" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Mobile Number';}"
									required=""></li>
								<li class="na-me"><input class="age" type="text"
									id="age" value="Age" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Age';}"
									required=""></li>


								<div class="clearfix"></div>
							</ul>
							<div class="sub-bn">
								<input type="button"
									style="padding: 6px 25px !important; font-size: 16px; text-indent: 0; padding: 6px 20px; color: #fff; background-color: #ff0000; border: 0; border-radius: 2px; -webkit-transition: all .2s; -moz-transition: all .2s; transition: all .2s; background-repeat: no-repeat; background-position: 96% center;"
									value="Book Ticket" onclick="bookTicket()">
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
<script>
function setValue(_this){
	var busId =  _this.getAttribute("data-busid");
	$("#selectedBus").val(busId);
}
function bookTicket(){
	debugger;
	var ticketDetails = {};
	ticketDetails.busdealer = {};
	ticketDetails.doj = '${busSearch.doj}';
	ticketDetails.dor = '${busSearch.dor}';
	ticketDetails.source = '${busSearch.source}';
	ticketDetails.destination = '${busSearch.destination}';
	ticketDetails.busdealer.id = $("#selectedBus").val();
	ticketDetails.name = $("#name").val();
	ticketDetails.email = $("#email").val();
	ticketDetails.mobile = $("#mobile").val();
	ticketDetails.age = $("#age").val();
	
	$.ajax({
		url: "/ticketBook",
		method: "POST",
		contentType: "application/json",
		data: JSON.stringify(ticketDetails),
		success: function(data){
			if(data == "Success"){
				$("#ticketSuccess").html("<h4>Ticket Booked Successfully <br> Your Ticket No : XXXXXXX. You will also get Soft copy on mail</h4>");	
			}
		},
		error: function(error){
			alert(error);
		}
	});
	
	
}
</script>

<%@ include file="common/footer.jsp"%>

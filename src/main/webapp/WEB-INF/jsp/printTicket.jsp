<%@ include file="common/header.jsp"%>

<div class="container">
	<div class="col-md-5 bann-info1 wow fadeInLeft animated"
		data-wow-delay=".5s">
		<i class="fa fa-th-large" style="font-size: 9em; color: #1f8dd6;"></i>
		<h3>INDIA MOST TRUSTED SERVICE</h3>
	</div>
	<div class="col-md-7 bann-info wow fadeInRight animated"
		data-wow-delay=".5s">
		<br><br>
		<h2>Print Ticket or else Go With E-Ticket</h2>
		<p id="msg">Please Enter below Details to Print your Ticket</p>
		<br />
		<form>
			<div class="ban-top">
				<div class="bnr-left">
					<label class="inputLabel">Ticket No</label> <input class="city"
						id="bookingid" type="text" value="Enter Ticket No"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter Ticket No';}"
						required=>
				</div>
				<div class="bnr-left">
					<label class="inputLabel">Email</label> <input class="city"
						id="email" type="text" value="Enter Email Id"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter Email Id';}"
						required=>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="sear">
				<input class="seabtn"
					style="padding: 6px 25px !important; font-size: 16px; text-indent: 0; padding: 6px 20px; color: #fff; background-color: #ff0000; border: 0; border-radius: 2px; -webkit-transition: all .2s; -moz-transition: all .2s; transition: all .2s; background-repeat: no-repeat; background-position: 96% center;"
					type="button" value="Print Ticket" onclick="printTicket()">
			</div>
		</form>
	</div>
	<div class="clearfix"></div>
	<br>
</div>

<div id="printTicketDetails">
	${ticketDetails.bookingid}
</div>

<script>
	function printTicket() {
		var ticketDetails = {};
		ticketDetails.bookingId = $("#bookingid").val();
		ticketDetails.email = $("#email").val();
		$.ajax({
			url : "printTicket",
			method : "POST",
			data : JSON.stringify(ticketDetails),
			contentType : "application/JSON",
			success : function(data) {
				$("#printTicketDetails").html("TicketDetails")
			}
		});
	}
</script>

<%@ include file="common/footer.jsp"%>
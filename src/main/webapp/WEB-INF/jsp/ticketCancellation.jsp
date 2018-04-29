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
		<h2>Cancel Ticket any Time with 100 % Refund</h2>
		<p id="msg">Please Enter below Details</p>
		<br />
		<form>
			<div class="ban-top">
				<div class="bnr-left">
					<label class="inputLabel">Ticket No</label> <input class="city"
						id="ticket" type="text" value="Enter Ticket No"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter a city';}"
						required=>
				</div>
				<div class="bnr-left">
					<label class="inputLabel">Email</label> <input class="city"
						id="email" type="text" value="Enter Email Id"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter a city';}"
						required=>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="sear">
				<input class="seabtn"
					style="padding: 6px 25px !important; font-size: 16px; text-indent: 0; padding: 6px 20px; color: #fff; background-color: #ff0000; border: 0; border-radius: 2px; -webkit-transition: all .2s; -moz-transition: all .2s; transition: all .2s; background-repeat: no-repeat; background-position: 96% center;"
					type="button" value="Cancel Ticket" onclick="saveBusHire()">
			</div>
		</form>
	</div>
	<div class="clearfix"></div>
	<br>
</div>

<script>
	function saveBusHire() {
		var bushire = {};
		bushire.source = $("#source").val();
		bushire.destination = $("#destination").val();
		bushire.doj = $("#doj").val();
		bushire.dor = $("#dor").val();
		bushire.total_person = $("#total_person").val();
		$.ajax({
			url : "saveBusHire",
			method : "POST",
			data : JSON.stringify(bushire),
			contentType : "application/JSON",
			success : function(data) {
				if (data == "Success") {
					$("#msg").html("We have received your Booking request, Our representative will call you soon")
				}
			}
		});
	}
</script>

<%@ include file="common/footer.jsp"%>
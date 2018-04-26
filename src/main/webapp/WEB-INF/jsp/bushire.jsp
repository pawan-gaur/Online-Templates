<%@ include file="common/header.jsp"%>

<div class="container">
	<div class="col-md-5 bann-info1 wow fadeInLeft animated"
		data-wow-delay=".5s">
		<i class="fa fa-th-large" style="font-size: 9em; color: #1f8dd6;"></i>
		<h3>INDIA MOST TRUSTED SERVICE</h3>
	</div>
	<div class="col-md-7 bann-info wow fadeInRight animated"
		data-wow-delay=".5s">
		<h2>Hire Bus at Minimal Advance Booking Fee</h2>
		<p id="msg">Please fill below form to Book full Bus</p>
		<br />
		<form>
			<div class="ban-top">
				<div class="bnr-left">
					<label class="inputLabel">From</label> <input class="city"
						id="source" type="text" value="Enter a city"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter a city';}"
						required=>
				</div>
				<div class="bnr-left">
					<label class="inputLabel">To</label> <input class="city"
						id="destination" type="text" value="Enter a city"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter a city';}"
						required=>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="ban-bottom">
				<div class="bnr-right">
					<label class="inputLabel">Date of Journey</label> <input
						class="date" id="doj" type="text" value="dd-mm-yyyy"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'dd-mm-yyyy';}"
						required=>
				</div>
				<div class="bnr-right">
					<label class="inputLabel">Date of Return<span class="opt">&nbsp;(Optional)</span></label>
					<input class="date" id="dor" type="text" value="dd-mm-yyyy"
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
						$("#doj,#dor").datepicker();
					});
				</script>
				<!---/End-date-piker---->
			</div>

			<div class="ban-bottom">
				<div class="bnr-left">
					<label class="inputLabel">Total Person</label> <input class="city"
						id="total_person" type="text" value="Enter No. of Person"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter No. of Person';}"
						required=>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="sear">
				<input class="seabtn"
					style="padding: 6px 25px !important; font-size: 16px; text-indent: 0; padding: 6px 20px; color: #fff; background-color: #ff0000; border: 0; border-radius: 2px; -webkit-transition: all .2s; -moz-transition: all .2s; transition: all .2s; background-repeat: no-repeat; background-position: 96% center;"
					type="button" value="Hire Bus" onclick="saveBusHire()">
			</div>
		</form>
	</div>
	<div class="clearfix"></div>
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
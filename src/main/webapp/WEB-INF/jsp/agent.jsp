<%@ include file="common/header.jsp"%>

<!--- banner-1 ---->
<div class="banner-1">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
			style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
			Bus Booking - Best in Class for Travel & Hotels</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- agent ---->
<div class="agent">
	<div class="container">
		<div class="col-md-6 agent-left wow fadeInDown animated"
			data-wow-delay=".5s">
			<div class="ag-bt">
				<a class="regist" href="#">Register Online &amp; Start Now</a>
			</div>
			<p id="msg">Please fill below form. We will call you back</p>
			<form>
				<input type="text" id="name" placeholder="Name"> <input
					type="text" id="email" placeholder="Email"> <input
					type="text" id="organization" placeholder="Organization"> <input
					type="text" id="phone" placeholder="Phone"> <input
					type="text" id="city" placeholder="City"> <select
					name="state" id="state" class="grayTextNormal">
					<option value="-- Select State --">-- Select State --</option>
					<option value="Delhi">Delhi</option>
					<option value="Rajasthan">Rajasthan</option>
					<option value="Himachal Pradesh">Himachal Pradesh</option>
					<option value="Uttar Pradesh">Uttar Pradesh</option>
				</select>
				<textarea id="message" placeholder="Message"></textarea>
				<div class="sub">
					<input type="button"
						style="padding: 6px 25px !important; font-size: 16px; text-indent: 0; padding: 6px 20px; color: #fff; background-color: #ff0000; border: 0; border-radius: 2px; -webkit-transition: all .2s; -moz-transition: all .2s; transition: all .2s; background-repeat: no-repeat; background-position: 96% center;"
						value="Submit" onclick="saveAgentDetails()">
				</div>
			</form>
		</div>
		<div class="col-md-6 agent-right wow fadeInUp animated"
			data-wow-delay=".5s">
			<iframe src="#" width="500" height="375" frameborder="0"
				webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
			<h3>About Bus</h3>
			<p>Lorem Ipsum comes from sections (The Extremes of Good and
				Evil) by Cicero, written in 45 BC. This book is a treatise on the
				theory of ethics, very popular during the Renaissance.</p>
			<h3>Contact Us</h3>
			<p>
				<a href="mailto:agentinfo@busbooking.com">agentinfo@busbooking.com</a>
			</p>
			<p>18001802477</p>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /agent ---->

<%@ include file="common/footer.jsp"%>

<script>
	function saveAgentDetails() {
		var agent = {};
		agent.name = $("#name").val();
		agent.email = $("#email").val();
		agent.organization = $("#organization").val();
		agent.phone = $("#phone").val();
		agent.city = $("#city").val();
		agent.state = $("#state").val();
		agent.message = $("#message").val();
		$
				.ajax({
					url : "saveAgentDetails",
					method : "POST",
					data : JSON.stringify(agent),
					contentType : "application/json",
					success : function(data) {
						if (data == "Success") {
							$("#msg")
									.html(
											"We received you details, Our representative will contact you soon...")
						}
					}
				});
	}
</script>
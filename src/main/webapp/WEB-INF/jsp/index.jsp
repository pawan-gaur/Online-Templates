<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=egde">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<title>Task Manager | Home</title>
<link href="static/images/photo.jpg" rel="shortcut icon">
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link rel='stylesheet prefetch'
	href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/css/bootstrap-datetimepicker.min.css'>
<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

<script src="static/js/jquery.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/datepicker.js"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js'></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/js/bootstrap-datetimepicker.min.js'></script>

</head>
<style>
#image_div {
	background-image: url(static/images/hero_background.png);
	width: 1359px;
	height: 450px;
	margin-left: -115px;
	margin-top: -110px;
}

.image-text {
	padding-top: 150px;
	text-transform: none;
	position: static;
	color: #fff;
	width: 100%;
	height: 41px;
	letter-spacing: 0;
	text-shadow: 0 2px 4px rgba(0, 0, 0, .5);
	text-align: center;
}

.main-header-family {
	font-weight: 600 !important;
	font-size: 30px !important;
}

.helper-text {
	position: sticky;
	color: #fff;
	padding-top: 20px;
	text-align: center;
	font-weight: 400;
	left: 0;
	right: 0;
	text-shadow: 1px 1px 2px #000;
	font-size: 20px !important;
}

.form-inline {
	padding-top: 25px;
	padding-left: 150px;
}

#inlineFormInputGroup {
	height: 50px;
	font-size: 15px;
}

.parent {
	display: flex;
}

.parent>div, button {
	display: inline-block;
	padding: 0em;
}

#buttonInputGroup {
	height: 50px;
	width: 100px
}

.row {
	margin-right: -15px;
	margin-left: -15px;
	padding-top: 60px;
	padding-left: 6px;
	background-color: #F8F9F9;
}

.card {
	-webkit-box-shadow: 10px 9px 27px -10px rgba(0,0,0,0.50);
	-moz-box-shadow: 10px 9px 27px -10px rgba(0,0,0,0.50);
	box-shadow: 10px 9px 27px -10px rgba(0,0,0,0.50);
	transition: 0.3s;
	width: 350px;
	height: 200px;
	background-color: white;
}

.card:hover {
	box-shadow: 8px 8px 8px rgba(0, 0, 0, 0.4);
}

.container-jumbotron{
	margin-right: -15px;
	margin-left: -15px;
	padding-top: 50px;
	padding-left: 6px;
}

.booking-img{
	background-image: url(static/images/booking-img.png);
	height: 261px;
	width: 424px;
}

.booking-text{
	
}
</style>
<body>

	<%@include file="/WEB-INF/jsp/shared/navbar.jsp"%>
	<div class="container" style="margin-top: 80px">
		<div id="image_div">
			<h1 class="image-text main-header-family">Stop Looking. Start
				Tracking!</h1>
			<h3 class="helper-text">Track your bus live with the online
				BusBooking app</h3>

			<form class="form-inline parent">
				<div class="input-group mb-2 mr-sm-2 mb-sm-0">
					<input type="text" class="form-control" id="inlineFormInputGroup"
						placeholder="From">
				</div>
				<div class="input-group mb-2 mr-sm-2 mb-sm-0">
					<input type="text" class="form-control" id="inlineFormInputGroup"
						placeholder="To">
				</div>
				
				<div class='input-group date' id='datetimepicker1'>
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-calendar"></span></span> <input type="text"
						class="form-control" id="inlineFormInputGroup"
						placeholder="ONWARDDATE">
					<!-- <input type= date> -->
				</div>

				<div class='input-group date' id='datetimepicker1'>
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-calendar"></span></span> <input type="text"
						class="form-control" id="inlineFormInputGroup"
						placeholder="RETURNDATE (Optional)">
				</div>

				<div>
					<button type="submit" class="btn btn-primary" id="buttonInputGroup">Submit</button>
				</div>
			</form>
		</div>

		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-block">
						<p class="card-text">Some quick example text to build on the
							card title .</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<div class="card-block">
						<p class="card-text">Some quick example text to build on the
							card title .</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<div class="card-block">
						<p class="card-text">Some quick example text to build on the
							card title .</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container-jumbotron">
			<div class="jumbotron text-center">
				<div class="booking-img">
					<div class="booking-text">
						
					</div>
				</div>
			</div>
		</div>


	</div>


	<%-- <%@include file="/WEB-INF/jsp/shared/footer.jsp"%> --%>
</body>
</html>
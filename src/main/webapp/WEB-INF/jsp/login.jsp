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
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<style>

</style>
</head>
<body>

	<%@include file="/WEB-INF/jsp/shared/navbar.jsp"%>
	<div class="container" style="margin-top: 80px">
		<h3>Log In</h3>
		
		<button type="button" class="btn" data-toggle="modal" data-target="#popUpWindow">Log In</button>
		<div class="modal fade" id="popUpWindow">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h2 class="modal-title">Log In to Continue</h2>
					</div>
					
					
					<!-- body (form) -->
					<div class="modal-body">
						<form role="form">
							<div class="form-group">
								<input type="email" class="form-control" placeholder="Enter Email" required />
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="Enter Password" required />
							</div>					
						</form>
					</div>
					
					<!-- button -->
					<div class="modal-footer">
						<button class="btn btn-primary btn-block">Log In</button>
					</div>
				</div>
			</div>
		</div>
	
		<button type="button" class="btn" data-toggle="modal" data-target="#signUpWindow">Sign Up</button>
		<div class="modal fade" id="signUpWindow">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h2 class="modal-title">Log In to Continue</h2>
					</div>
					
					<!-- body (form) -->
					<div class="modal-body">
						<form role="form">
						<div class="form-group">
								<input type="text" class="form-control" placeholder="Full Name" required />
							</div>
							<div class="form-group">
								<input type="email" class="form-control" placeholder="Enter Email" required />
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="Enter Password" required />
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="Re-Enter Password" required />
							</div>					
						</form>
					</div>
					
					<!-- button -->
					<div class="modal-footer">
						<button class="btn btn-primary btn-block">Sign Up</button>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script src="static/js/jquery.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>
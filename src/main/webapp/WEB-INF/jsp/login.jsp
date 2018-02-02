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
.form-container{
	margin-top: 90px;
}

.form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 25px 10px;
    font-size: 20px;
    line-height: 1.42857143;
    color: #555;
}

.submit-name{

}
</style>
</head>
<body>

	<%@include file="/WEB-INF/jsp/shared/navbar.jsp"%>
	<div class="container" style="margin-top: 80px">

		<div class="form-container">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="jumbotron">
					<form>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Email">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Password">
						</div>
						<div class="checkbox">
							<label><input type="checkbox">Remember me</label>
						</div>						
						<button type="submit" class="btn btn-primary form-control"><div class="submit-name">Login</div></button>
					</form>
					
					
					
					<!--
					<div class="text-center">
						<span class="txt1">
							Not a member?
						</span>

						<a class="txt1 bo1 hov1" href="#">
							Sign up now
						</a>
					</div>
					-->
					
				</div>
			</div>
			<div class="col-lg-4"></div>
		</div>





	</div>
	<script src="static/js/jquery.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>
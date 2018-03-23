<style>
.navbar-fixed-top{
	//background-color: #d84f57;
	background-color: #d23433; //For other Logo
}

.navbar-inverse .navbar-brand {
    color: white;
}
.navbar-inverse .navbar-nav > li > a {
    color: white;
}
.navbar-brand>img {
    display: block;
    height: 60px;
    width: 60px;
    margin-top: -18px;
	margin-left: 15px
}
</style>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/"><img src="static/images/photo.jpg"></a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="new-task">BUS TICKETS</a></li> <!-- New Task -->
			<li><a href="all-tasks">BUS HIRE</a></li> <!-- All Task -->
			<li><a href="contact">CONTACT</a></li> <!-- -->
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/login"><span class="glyphicon glyphicon-user"></span>&nbsp;Login</a></li>
		</ul>
	</div>
</div>
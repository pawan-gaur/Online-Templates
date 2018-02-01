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
</head>
<body>

	<%@include file="/WEB-INF/jsp/shared/navbar.jsp"%>
	<div class="container" style="margin-top: 80px">
		<c:choose>
			<c:when test="${mode == 'MODE_TASKS'}">
				<div class="container text-center" id="tasksDiv">
					<h3>My Tasks</h3>
					<hr>
					<div class="table-responsive">
						<table class="table table-stripped table-bordered text-left">
							<thead>
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Description</th>
									<th>Date Created</th>
									<th>Finished</th>
									<th>Update</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="tasks" items="${tasks}">
									<tr>
										<td>${tasks.id}</td>
										<td>${tasks.name}</td>
										<td>${tasks.description}</td>
										<td>${tasks.dateCreated}</td>
										<td>${tasks.finished}</td>
										<td><a href="update-tasks?id=${tasks.id}"><span
												class="glyphicon glyphicon-pencil"></span></a></td>
										<td><a href="delete-tasks?id=${tasks.id}"><span
												class="glyphicon glyphicon-trash"></span></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
		</c:when>

			<c:when test="${mode == 'MODE_NEW' || mode =='MODE_UPDATE'}">
				<div class="container text-center">
					<h3>Manage Task</h3>
					<hr>
					<form class="form-horizontal" method="post" action="save-task">
						<input type="hidden" name="id" value="${task.id}" />
						<div class="form-group">
							<label class="control-label col-md-3">Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="name"
									value="${task.name}">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3">Description</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="description"
									value="${task.description}">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3">Finished</label>
							<div class="col-md-7">
								<input type="radio" class="col-sm-1" name="finished"
									value="true" />
								<div class="col-sm-1">Yes</div>
								<input type="radio" class="col-sm-1" name="finished"
									value="false" checked />
								<div class="col-sm-1">No</div>
							</div>
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary" value="Save" />
						</div>
					</form>
				</div>
			</c:when>
		</c:choose>
	</div>

	<script src="static/js/jquery.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Case</title>
<link rel="stylesheet" href="css/font-awesome.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.theme.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, intial-scale=1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
  <s:url action="login_logout" var="logout"></s:url>
    <s:url action="activityArchive_list" var="list"></s:url>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">WebSiteName</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a href="#">Page 2</a></li>
				<li><s:a href="%{search}"><span class="glyphicon glyphicon-list"></span>
						Activity list</s:a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><s:a href="%{search}"><span class="glyphicon glyphicon-user"></span>
						<s:property value="userNameLogin" /></s:a></li>
				<li><s:a href="%{logout}"><span class="glyphicon glyphicon-log-out"></span>
						Logout</s:a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
		<h3>Right Aligned Navbar</h3>
		<p>The .navbar-right class is used to right-align navigation bar
			buttons.</p>
	</div>

</body>
</html>
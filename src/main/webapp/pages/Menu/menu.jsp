<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Case</title>
<link rel="stylesheet" href="css/font-awesome.min.css">
</head>
<body style="background: #E5E6E8">
	<s:url action="login_logout" var="logout"></s:url>
	<s:url action="login_homeFirst" var="home"></s:url>
	<s:url action="activityArchive_list" var="listactivity"></s:url>
	<s:url action="applicationArchive_list" var="listapplication"></s:url>
	<s:url action="aumByCIFArchive_list" var="listaumbycif"></s:url>
	<s:url action="aumByBranchArchive_list" var="listaumbybranch"></s:url>
	<s:url action="portHoldingBySubAccountArchive_list" var="listaumbyport"></s:url>
	<nav class="navbar" style="background:#A7C7E8;">
	<div class="container-fluid">
		<div>
			<ul class="nav navbar-nav">
				<li><s:a href="%{home}">
						<span class="fa fa-home"></span> Home</s:a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><span class="fa fa-archive"></span>
						AUM Archive <span class="caret"></span></a>
					<ul class="dropdown-menu " aria-labelledby="dropdownMenu1">
						<li><s:a href="%{listaumbycif}"><h5 style="color: #337AB7;"><span class="fa fa-list"></span> List AUM By CIF</h5></s:a></li>
						<li><s:a href="%{listaumbybranch}"><h5 style="color: #337AB7;"><span class="fa fa-list"></span> List AUM By Branch</h5></s:a></li>
						<li><s:a href="%{listaumbyport}"><h5 style="color: #337AB7;"><span class="fa fa-list"></span> List PortHolding</h5></s:a></li>
						<li><s:a href="%{listapplication}"><h5 style="color: #337AB7;"><span class="fa fa-plus-circle"></span> Add Archive AUM </h5></s:a></li>
					</ul></li>
				<li><s:a href="%{listapplication}">
						<span class="fa fa-archive"></span> Application Archive</s:a></li>
				<li><s:a href="%{listactivity}">
						<span class="fa fa-archive"></span>
						Activity Archive</s:a></li>
				<li><s:a href="#">
						<span class="fa fa-tachometer"></span>
						dashboard</s:a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><s:a href="%{search}">
						<span class="glyphicon glyphicon-user"></span>
						<s:property value="userNameLogin" />
					</s:a></li>
				<li><s:a href="%{logout}">
						<span class="glyphicon glyphicon-log-out"></span>
						Logout</s:a></li>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>
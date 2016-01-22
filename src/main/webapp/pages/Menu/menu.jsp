<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Case</title>
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<s:url action="login_logout" var="logout"></s:url>
	<s:url action="login_homeFirst" var="home"></s:url>
	<s:url action="activityArchive_list" var="listactivity"></s:url>
	<s:url action="applicationArchive_list" var="listapplication"></s:url>
	<s:url action="aumByCIFArchive_list" var="listaumbycif"></s:url>
	<s:url action="aumByBranchArchive_list" var="listaumbybranch"></s:url>
	<s:url action="portHoldingBySubAccountArchive_list" var="listaumbyport"></s:url>
	<s:url action="aumByCIFArchive_add" var="addaumbycif"></s:url>
	<s:url action="dashBoard_browser" var="showDashBoard"></s:url>

	<div class="wrapper">
		<header class="main-header">
		<!-- Logo -->
        <a href="login_homeFirst.action" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Eng</b>Pro</span>
        </a> 
		<nav
			class="navbar navbar-static-top" role="navigation">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li><s:a href="%{home}">
						<span class="fa fa-home"></span> Home</s:a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><span class="fa fa-archive"></span>
						AUM Archive <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><s:a href="%{listaumbycif}">
								<h5 style="color: #337AB7;">
									<span class="fa fa-list"></span> List AUM By CIF
								</h5>
							</s:a></li>
						<li><s:a href="%{listaumbybranch}">
								<h5 style="color: #337AB7;">
									<span class="fa fa-list"></span> List AUM By Branch
								</h5>
							</s:a></li>
						<li><s:a href="%{listaumbyport}">
								<h5 style="color: #337AB7;">
									<span class="fa fa-list"></span> List PortHolding
								</h5>
							</s:a></li>
						<li><s:a href="%{addaumbycif}">
								<h5 style="color: #337AB7;">
									<span class="fa fa-plus-circle"></span> Add Archive AUM
								</h5>
							</s:a></li>
					</ul></li>
				<li><s:a href="%{listapplication}">
						<span class="fa fa-archive"></span> Application Archive</s:a></li>
				<li><s:a href="%{listactivity}">
						<span class="fa fa-archive"></span>
						Activity Archive</s:a></li>
				<li><s:a href="%{showDashBoard}">
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
		</nav> </header>
	</div>
    <div style="margin-top: 50px"></div>
	<script src="plugins/fastclick/fastclick.min.js"></script>
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script src="dist/js/demo.js"></script>
</body>
</html>
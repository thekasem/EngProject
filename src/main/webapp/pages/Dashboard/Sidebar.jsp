<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sidebar</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../../js/highcharts.js"></script>
<script src="../../js/highcharts-3d.js"></script>
<script src="../../js/highcharts-more.js"></script>
<script src="../../js/funnel.js"></script>
<script src="../../js/exporting.js"></script>
<script src="../../js/solid-gauge.js"></script>
<script src="../../js/team-highcharts.js"></script>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<script src="../../js/bootstrap.min.js"></script>
</head>

<style type="text/css">
body {
	padding-top: 0px;
}

.text-center {
	padding-top: 0px;
}

.col-xs-12 {
	background-color: #fff;
}

#sidebar {
	height: 100%;
	padding-right: 0;
	padding-top: 0px;
}

#sidebar .nav {
	width: 70%;
}

#sidebar li {
	border: 0 #f2f2f2 solid;
	border-bottom-width: 1px;
}

/* collapsed sidebar styles */
@media screen and (max-width: 767px) {
	.row-offcanvas {
		position: relative;
		-webkit-transition: all 0.25s ease-out;
		-moz-transition: all 0.25s ease-out;
		transition: all 0.25s ease-out;
	}
	.row-offcanvas-right
  .sidebar-offcanvas {
		right: -41.6%;
	}
	.row-offcanvas-left
  .sidebar-offcanvas {
		left: -41.6%;
	}
	.row-offcanvas-right.active {
		right: 41.6%;
	}
	.row-offcanvas-left.active {
		left: 41.6%;
	}
	.sidebar-offcanvas {
		position: absolute;
		top: 0;
		width: 41.6%;
	}
	#sidebar {
		padding-top: 0;
	}
}
</style>
</head>
<body style="background: #FEFCFF">
	<div class="container">
		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default"><span
					class="fa fa-dashboard"> Dashboard</span></span>
			</h3>
		</div>
		<div class="row">
			<div class="col-xs-4 col-sm-3 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="DashboardDate.jsp">Select Date</a></li>
					<li><a href="DashboardBrowsers.jsp">Browsers</a></li>
					<li><a href="DashboardLogin.jsp">Login</a></li>
					<li><a href="DashboardUser.jsp">User</a></li>
					<li><a href="DashboardTopModule.jsp">Top Module</a></li>
					<li><a href="DashboardPercentNewUser.jsp">Percent New User</a></li>
					<li><a href="DashboardCustomer.jsp">Customers</a></li>
					<li><a href="DashboardTopUser.jsp">Top User</a></li>
					<li><a href="DashboardAverage.jsp">Average Time On Site</a></li>
					<li><a href="DashboardViewAUM.jsp">View AUM</a></li>
					<li><a href="DashboardDiskUsage.jsp">Disk Usage</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sidebar</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/fullcalendar/fullcalendar.min.css">
<link rel="stylesheet"
	href="plugins/fullcalendar/fullcalendar.print.css" media="print">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet" href="css/ionicons.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<ul class="sidebar-menu">

			<div class="user-panel">
				<div class="pull-left image">
					<img src="dist/img/usertest.png" class="img-circle"
						alt="User Image">
				</div>
				<div class="pull-left info">
					<p>
						<s:property value="userNameLogin" />
					</p>
					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
				</div>
			</div>
			<div class="box-header with-border bg-yellow disabled color-palette">
				<h3 class="box-title">
					<span class="fa fa-bars"> Menu Bar</span>
				</h3>
			</div>
			<li class="active treeview"><a href="#"> <i
					class="fa fa-dashboard"></i> <span> Dashboard</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="dashBoard_browser"><i class="fa fa-circle-o"></i>
							Dashboard v1</a></li>

				</ul></li>
			<li class="active treeview"><a href="#"> <i
					class="fa fa-archive"></i> <span> AUM Archive</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="aumByCIFArchive_list"><i
							class="fa fa-circle-o"></i> List AUM By CIF</a></li>
					<li><a href="aumByBranchArchive_list"><i
							class="fa fa-circle-o"></i> List AUM By Branch</a></li>
					<li><a href="portHoldingBySubAccountArchive_list"><i
							class="fa fa-circle-o"></i> List PortHolding</a></li>
					<li><a href="aumByCIFArchive_add"><i
							class="fa fa-circle-o"></i> Add Archive AUM</a></li>

				</ul></li>

			<li class="active treeview"><a href="#"> <i
					class="fa fa-dashboard"></i> <span> Application Archive</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="applicationArchive_list"><i
							class="fa fa-circle-o"></i> Application Archive List</a></li>

				</ul></li>
			<li class="active treeview"><a href="#"> <i
					class="fa fa-dashboard"></i> <span> Activity Archive</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="activityArchive_list"><i
							class="fa fa-circle-o"></i> Activity Archive List</a></li>

				</ul></li>
		</ul>
	</div>
	<script src="js/bootstrap.min.js"></script>
	<script src="plugins/fastclick/fastclick.js"></script>
	<script src="dist/js/app.min.js"></script>
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script src="plugins/chartjs/Chart.min.js"></script>
	<script src="dist/js/demo.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sidebar</title>
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
					<li  class="active"><s:a href="dashBoard_browser">Browsers</s:a></li>
					<li><s:a href="dashBoard_login">Login</s:a></li>
					<li><s:a href="dashBoard_user">User</s:a></li>
					<li><s:a href="dashBoard_topModule">Top Module</s:a></li>
					<li><s:a href="dashBoard_newUser">Percent New User</s:a></li>
					<li><s:a href="dashBoard_customer">Customers</s:a></li>
					<li><s:a href="dashBoard_topUser">Top User</s:a></li>
					<li><s:a href="dashBoard_argTimeOnSite">Average Time On Site</s:a></li>
					<li><s:a href="dashBoard_viewAUM">View AUM</s:a></li>
					<li><s:a href="dashBoard_diskUsage">Disk Usage</s:a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
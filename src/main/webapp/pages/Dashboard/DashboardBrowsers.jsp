<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard Browsers</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="js/highcharts.js"></script>
<script src="js/highcharts-3d.js"></script>
<script src="js/highcharts-more.js"></script>
<script src="js/funnel.js"></script>
<script src="js/exporting.js"></script>
<script src="js/solid-gauge.js"></script>
<script src="js/team-highcharts.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.min.css">
<script src="calendar/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.structure.min.css">
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.theme.min.css">
<script src="DetailsDashboardSidebar/browsers.js"></script>
<script src="DetailsDashboardSidebar/login.js"></script>
<script src="DetailsDashboardSidebar/user.js"></script>
<script src="DetailsDashboardSidebar/topmodule.js"></script>
<script src="DetailsDashboardSidebar/percentnewuser.js"></script>
<script src="DetailsDashboardSidebar/customer.js"></script>
<script src="DetailsDashboardSidebar/topuser.js"></script>
<script src="DetailsDashboardSidebar/average.js"></script>
<script src="DetailsDashboardSidebar/viewaum.js"></script>
<script src="DetailsDashboardSidebar/diskusage.js"></script>
</head>
<body style="background: #FEFCFF">
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<s:include value="/pages/Dashboard/Sidebar.jsp"></s:include>
			</div>
			<div col-md-9>
				<div class="panel panel-default"
					style="margin-top: 60px; margin-left: 270px;">
					<div class="panel-heading">
						<Strong>Details Dashboard</Strong>
					</div>
					<div class="panel-body">
						<form class="form-horizontal">
							<div class="well">
									<h4>Browsers</h4>
									<div class="input-group text-center">
										<div class="col-md-2">
											<div id="dashboardbrowser"
												style="width: 800px;"></div>
										</div>
									</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
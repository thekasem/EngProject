<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard Disk Usage</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/highcharts-more.js"></script>
<script src="js/solid-gauge.js"></script>
<script src="js/team-highcharts.js"></script>
<script src="DetailsDashboardSidebar/diskusage.js"></script>
</head>
<body style="background: #222D32">
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="row">

		<div class="col-md-2">
			<s:include value="/pages/Menu/menuV.jsp"></s:include>
		</div>
		<div class="col-md-10">
			<div style="margin-top: 20px"></div>
			<div class="container">
				<div class="row">

					<div class="col-md-9">
						<div class="box box-warning">
							<div class="box-header with-border">
								<div class="panel-heading">
									<Strong>Details Dashboard</Strong>
								</div>
								<div class="panel-body box box box-warning">
									<form class="form-horizontal">
										<div class="well">
											<h4>
												<span class="fa fa-database"> <b>Disk Usage</b></span>
											</h4>
											<div class="input-group text-center">
												<div class="col-md-2">
													<div
														style="width: 800px; margin-left: 115px; margin-top: 0px;">
														<div id="dashboardactivity"
															style="width: 300px; height: 200px; float: left"></div>
														<div id="dashboardapplication"
															style="width: 300px; height: 200px; float: left"></div>
													</div>
													<div
														style="width: 800px; margin-left: 115px; margin-top: 50px;">
														<div id="dashboardaumbycif"
															style="width: 300px; height: 200px; float: left"></div>
														<div id="dashboardaumbybranch"
															style="width: 300px; height: 200px; float: left"></div>
													</div>

												</div>
												<div class="col-md-2">
													<div
														style="width: 1200px; margin-left: 50px; margin-top: 400px;">
														<div id="dashboardportholding"
															style="width: 300px; height: 200px; float: left"></div>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<s:include value="/pages/Dashboard/Sidebar.jsp"></s:include>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
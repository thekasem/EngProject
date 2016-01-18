<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard Disk Usage</title>
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
							<div class="well" style="width: 868px; height: 400px;">
								<h4>Disk Usage</h4>
								<div class="input-group text-center">
									<div class="col-md-2">
										<div style="width: 800px; margin-left: 115px; margin-top: 50px;">										
											<div id="dashboardbonanza"
												style="width: 300px; height: 200px; float: left"></div>
											<div id="dashboardarchive"
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
	</div>
</body>
</html>
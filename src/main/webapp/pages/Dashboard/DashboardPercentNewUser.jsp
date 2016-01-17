<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard Percent New User</title>
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
								<h4>Percent New User</h4>
								<div class="input-group text-center">
									<div class="col-md-2">
										<div id="dashboardnewuser" style="width: 800px;"></div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('#dashboardnewuser')
					.highcharts(
							{

								chart : {
									type : 'column',
									options3d : {
										enabled : true,
										alpha : 15,
										beta : 15,
										viewDistance : 25,
										depth : 40
									},
									marginTop : 80,
									marginRight : 40
								},

								title : {
									text : ''
								},

								xAxis : {
									categories : [ 'Apples', 'Oranges',
											'Pears', 'Grapes', 'Bananas' ]
								},

								yAxis : {
									allowDecimals : false,
									min : 0,
									title : {
										text : 'Number of fruits'
									}
								},

								tooltip : {
									headerFormat : '<b>{point.key}</b><br>',
									pointFormat : '<span style="color:{series.color}">\u25CF</span> {series.name}: {point.y} / {point.stackTotal}'
								},

								plotOptions : {
									column : {
										stacking : 'normal',
										depth : 40
									}
								},

								series : [ {
									name : 'John',
									data : [ 5, 3, 4, 7, 2 ],
									stack : 'male'
								}, {
									name : 'Joe',
									data : [ 3, 4, 4, 2, 5 ],
									stack : 'male'
								}, {
									name : 'Jane',
									data : [ 2, 5, 6, 2, 1 ],
									stack : 'female'
								}, {
									name : 'Janet',
									data : [ 3, 0, 4, 4, 3 ],
									stack : 'female'
								} ]
							});
		});
	</script>
	<script type="text/css">
#dashboardnewuser {
    height: 400px; 
    min-width: 310px; 
    max-width: 800px;
    margin: 0 auto;
}
</script>
</body>
</html>
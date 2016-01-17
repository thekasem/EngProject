<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard Top Module</title>
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
								<h4>Top Module</h4>
								<div class="input-group text-center">
									<div class="col-md-2">
										<div id="dashboardtopmodule"
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


	<script type="text/javascript">
		$(function() {
			$('#dashboardtopmodule')
					.highcharts(
							{
								title : {
									text : 'Combination chart'
								},
								xAxis : {
									categories : [ 'Apples', 'Oranges',
											'Pears', 'Bananas', 'Plums' ]
								},
								labels : {
									items : [ {
										html : 'Total fruit consumption',
										style : {
											left : '50px',
											top : '18px',
											color : (Highcharts.theme && Highcharts.theme.textColor)
													|| 'black'
										}
									} ]
								},
								series : [
										{
											type : 'column',
											name : 'Jane',
											data : [ 3, 2, 1, 3, 4 ]
										},
										{
											type : 'column',
											name : 'John',
											data : [ 2, 3, 5, 7, 6 ]
										},
										{
											type : 'column',
											name : 'Joe',
											data : [ 4, 3, 3, 9, 0 ]
										},
										{
											type : 'spline',
											name : 'Average',
											data : [ 3, 2.67, 3, 6.33, 3.33 ],
											marker : {
												lineWidth : 2,
												lineColor : Highcharts
														.getOptions().colors[3],
												fillColor : 'white'
											}
										},
										{
											type : 'pie',
											name : 'Total consumption',
											data : [
													{
														name : 'Jane',
														y : 13,
														color : Highcharts
																.getOptions().colors[0]
													// Jane's color
													},
													{
														name : 'John',
														y : 23,
														color : Highcharts
																.getOptions().colors[1]
													// John's color
													},
													{
														name : 'Joe',
														y : 19,
														color : Highcharts
																.getOptions().colors[2]
													// Joe's color
													} ],
											center : [ 100, 80 ],
											size : 100,
											showInLegend : false,
											dataLabels : {
												enabled : false
											}
										} ]
							});
		});
	</script>


</body>
</html>
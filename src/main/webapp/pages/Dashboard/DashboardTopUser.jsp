<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard Top User</title>
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
								<h4>Top User</h4>
								<div class="input-group text-center">
									<div class="col-md-2">
										<div id="dashboardtopuser"
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
			$('#dashboardtopuser')
					.highcharts(
							{
								chart : {
									type : 'area'
								},
								title : {
									text : ''
								},
								subtitle : {
									text : ''
								},
								xAxis : {
									categories : [ '1750', '1800', '1850',
											'1900', '1950', '1999', '2050' ],
									tickmarkPlacement : 'on',
									title : {
										enabled : false
									}
								},
								yAxis : {
									title : {
										text : 'Billions'
									},
									labels : {
										formatter : function() {
											return this.value / 1000;
										}
									}
								},
								tooltip : {
									shared : true,
									valueSuffix : ' millions'
								},
								plotOptions : {
									area : {
										stacking : 'normal',
										lineColor : '#666666',
										lineWidth : 1,
										marker : {
											lineWidth : 1,
											lineColor : '#666666'
										}
									}
								},
								series : [
										{
											name : 'Asia',
											data : [ 502, 635, 809, 947, 1402,
													3634, 5268 ]
										},
										{
											name : 'Africa',
											data : [ 106, 107, 111, 133, 221,
													767, 1766 ]
										},
										{
											name : 'Europe',
											data : [ 163, 203, 276, 408, 547,
													729, 628 ]
										},
										{
											name : 'America',
											data : [ 18, 31, 54, 156, 339, 818,
													1201 ]
										}, {
											name : 'Oceania',
											data : [ 2, 2, 2, 6, 13, 30, 46 ]
										} ]
							});
		});
	</script>
</body>
</html>
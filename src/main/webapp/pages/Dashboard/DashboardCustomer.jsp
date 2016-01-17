<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard Customer</title>
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
									<h4>Customer</h4>
									<div class="input-group text-center">
										<div class="col-md-2">
											<div id="dashboardcustomer"
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
	$(function () {
	    $('#dashboardcustomer').highcharts({

	        chart: {
	            type: 'column'
	        },

	        title: {
	            text: ''
	        },

	        xAxis: {
	            categories: ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
	        },

	        yAxis: {
	            allowDecimals: false,
	            min: 0,
	            title: {
	                text: 'Number of fruits'
	            }
	        },

	        tooltip: {
	            formatter: function () {
	                return '<b>' + this.x + '</b><br/>' +
	                    this.series.name + ': ' + this.y + '<br/>' +
	                    'Total: ' + this.point.stackTotal;
	            }
	        },

	        plotOptions: {
	            column: {
	                stacking: 'normal'
	            }
	        },

	        series: [{
	            name: 'John',
	            data: [5, 3, 4, 7, 2],
	            stack: 'male'
	        }, {
	            name: 'Joe',
	            data: [3, 4, 4, 2, 5],
	            stack: 'male'
	        }, {
	            name: 'Jane',
	            data: [2, 5, 6, 2, 1],
	            stack: 'female'
	        }, {
	            name: 'Janet',
	            data: [3, 0, 4, 4, 3],
	            stack: 'female'
	        }]
	    });
	});
	</script>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/highcharts-3d.js"></script>
<script src="js/highcharts-more.js"></script>
<script src="js/funnel.js"></script>
<script src="js/exporting.js"></script>
<script src="js/solid-gauge.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="../../calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="../../calendar/jquery-ui-1.11.4.custom/jquery-ui.min.css">
<script src="../../calendar/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="../../calendar/jquery-ui-1.11.4.custom/jquery-ui.structure.min.css">
<link rel="stylesheet"
	href="../../calendar/jquery-ui-1.11.4.custom/jquery-ui.theme.min.css">
</head>
<body style="background: #FEFCFF">
		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default">Dashboard</span>
			</h3>
		</div>
			<div class="panel-heading">
				<Strong>Dashboard</Strong>
			</div>
										<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>

	<script type="text/javascript">
	$(function () {
	    $('#container').highcharts({
	        chart: {
	            plotBackgroundColor: null,
	            plotBorderWidth: 0,
	            plotShadow: false
	        },
	        title: {
	            text: 'Browser<br>shares<br>2015',
	            align: 'center',
	            verticalAlign: 'middle',
	            y: 40
	        },
	        tooltip: {
	            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	        },
	        plotOptions: {
	            pie: {
	                dataLabels: {
	                    enabled: true,
	                    distance: -50,
	                    style: {
	                        fontWeight: 'bold',
	                        color: 'white',
	                        textShadow: '0px 1px 2px black'
	                    }
	                },
	                startAngle: -90,
	                endAngle: 90,
	                center: ['50%', '75%']
	            }
	        },
	        series: [{
	            type: 'pie',
	            name: 'Browser share',
	            innerSize: '50%',
	            data: [
	                ['Firefox',   10.38],
	                ['IE',       56.33],
	                ['Chrome', 24.03],
	                ['Safari',    4.77],
	                ['Opera',     0.91],
	                {
	                    name: 'Proprietary or Undetectable',
	                    y: 0.2,
	                    dataLabels: {
	                        enabled: false
	                    }
	                }
	            ]
	        }]
	    });
	});
	</script>
</body>
</html>
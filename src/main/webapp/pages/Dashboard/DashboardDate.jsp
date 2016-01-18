<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard Date</title>
<script src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.min.css">
<script src="calendar/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.structure.min.css">
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.theme.min.css">
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
								<h4>Select Date</h4>
								<div class="input-group text-center">
									<div class="form-group" style="margin-left: 0px;">
										<label class="col-md-2 control-label">From Date</label>
										<div class="col-md-3">
											<s:textfield cssClass="datepicker form-control"></s:textfield>
										</div>

										<label class="col-md-2 control-label">To Date</label>
										<div class="col-md-3">
											<s:textfield cssClass="datepicker form-control"></s:textfield>
										</div>
										<s:a type="button" class="btn btn-info" href="%{addbycif}">
											<span class="fa fa-refresh"></span> Reset</s:a>
									</div>
										
									<div class="col-md-2">
										<div id="clock" style="width: 800px; margin-top: 50px;"></div>
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

			/**
			 * Get the current time
			 */
			function getNow() {
				var now = new Date();

				return {
					hours : now.getHours() + now.getMinutes() / 60,
					minutes : now.getMinutes() * 12 / 60 + now.getSeconds()
							* 12 / 3600,
					seconds : now.getSeconds() * 12 / 60
				};
			}

			/**
			 * Pad numbers
			 */
			function pad(number, length) {
				// Create an array of the remaining length + 1 and join it with 0's
				return new Array((length || 2) + 1 - String(number).length)
						.join(0)
						+ number;
			}

			var now = getNow();

			// Create the chart
			$('#clock')
					.highcharts(
							{

								chart : {
									type : 'gauge',
									plotBackgroundColor : null,
									plotBackgroundImage : null,
									plotBorderWidth : 0,
									plotShadow : false,
									height : 200
								},

								credits : {
									enabled : false
								},

								title : {
									text : ''
								},

								pane : {
									background : [
											{
											// default background
											},
											{
												// reflex for supported browsers
												backgroundColor : Highcharts.svg ? {
													radialGradient : {
														cx : 0.5,
														cy : -0.4,
														r : 1.9
													},
													stops : [
															[ 0.5,
																	'rgba(255, 255, 255, 0.2)' ],
															[ 0.5,
																	'rgba(200, 200, 200, 0.2)' ] ]
												}
														: null
											} ]
								},

								yAxis : {
									labels : {
										distance : -20
									},
									min : 0,
									max : 12,
									lineWidth : 0,
									showFirstLabel : false,

									minorTickInterval : 'auto',
									minorTickWidth : 1,
									minorTickLength : 5,
									minorTickPosition : 'inside',
									minorGridLineWidth : 0,
									minorTickColor : '#666',

									tickInterval : 1,
									tickWidth : 2,
									tickPosition : 'inside',
									tickLength : 10,
									tickColor : '#666',
									title : {
										text : '',
										style : {
											color : '#BBB',
											fontWeight : 'normal',
											fontSize : '8px',
											lineHeight : '10px'
										},
										y : 10
									}
								},

								tooltip : {
									formatter : function() {
										return this.series.chart.tooltipText;
									}
								},

								series : [ {
									data : [ {
										id : 'hour',
										y : now.hours,
										dial : {
											radius : '60%',
											baseWidth : 4,
											baseLength : '95%',
											rearLength : 0
										}
									}, {
										id : 'minute',
										y : now.minutes,
										dial : {
											baseLength : '95%',
											rearLength : 0
										}
									}, {
										id : 'second',
										y : now.seconds,
										dial : {
											radius : '100%',
											baseWidth : 1,
											rearLength : '20%'
										}
									} ],
									animation : false,
									dataLabels : {
										enabled : false
									}
								} ]
							},

							// Move
							function(chart) {
								setInterval(
										function() {

											now = getNow();

											var hour = chart.get('hour'), minute = chart
													.get('minute'), second = chart
													.get('second'),
											// run animation unless we're wrapping around from 59 to 0
											animation = now.seconds === 0 ? false
													: {
														easing : 'easeOutBounce'
													};

											// Cache the tooltip text
											chart.tooltipText = pad(Math
													.floor(now.hours), 2)
													+ ':'
													+ pad(
															Math
																	.floor(now.minutes * 5),
															2)
													+ ':'
													+ pad(now.seconds * 5, 2);

											hour.update(now.hours, true,
													animation);
											minute.update(now.minutes, true,
													animation);
											second.update(now.seconds, true,
													animation);

										}, 1000);

							});
		});

		/**
		 * Easing function from https://github.com/danro/easing-js/blob/master/easing.js
		 */
		Math.easeOutBounce = function(pos) {
			if ((pos) < (1 / 2.75)) {
				return (7.5625 * pos * pos);
			}
			if (pos < (2 / 2.75)) {
				return (7.5625 * (pos -= (1.5 / 2.75)) * pos + 0.75);
			}
			if (pos < (2.5 / 2.75)) {
				return (7.5625 * (pos -= (2.25 / 2.75)) * pos + 0.9375);
			}
			return (7.5625 * (pos -= (2.625 / 2.75)) * pos + 0.984375);
		};
	</script>
</body>
</html>
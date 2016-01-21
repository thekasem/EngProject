$(function() {
	
	var modules = [];
	
	var dataactivity = [];
	var dataapplication = [];
	var dataaumbycif = [];
	var dataaumbybranch = [];
	var dataportholding = [];
	
	$.ajax({
		type : "GET",
		url : 'diskUsageJson.action',
		data : {},
		success : function(response) {

			modules = response.modules;
			
			dataactivity = response.dataactivity;
			dataapplication = response.dataapplication;
			dataaumbycif = response.dataaumbycif;
			dataaumbybranch = response.dataaumbybranch;
			dataportholding = response.dataportholding;
			
	var gaugeOptions = {

		chart : {
			type : 'solidgauge'
		},

		title : null,

		pane : {
			center : [ '50%', '85%' ],
			size : '140%',
			startAngle : -90,
			endAngle : 90,
			background : {
				backgroundColor : (Highcharts.theme && Highcharts.theme.background2)
						|| '#EEE',
				innerRadius : '60%',
				outerRadius : '100%',
				shape : 'arc'
			}
		},

		tooltip : {
			enabled : false
		},

		// the value axis
		yAxis : {
			stops : [ [ 0.1, '#55BF3B' ], // green
			[ 0.5, '#DDDF0D' ], // yellow
			[ 0.9, '#DF5353' ] // red
			],
			lineWidth : 0,
			minorTickInterval : null,
			tickPixelInterval : 400,
			tickWidth : 0,
			title : {
				y : -70
			},
			labels : {
				y : 16
			}
		},

		plotOptions : {
			solidgauge : {
				dataLabels : {
					y : 5,
					borderWidth : 0,
					useHTML : true
				}
			}
		}
	};

	$('#dashboardactivity')
			.highcharts(
					Highcharts
							.merge(
									gaugeOptions,
									{
										yAxis : {
											min : 0,
											max : 1000,
											title : {
												text : modules[0]
											}
										},

										series : [ {
											name : modules[0],
											data : dataactivity,
											dataLabels : {
												format : '<div style="text-align:center"><span style="font-size:25px;color:'
														+ ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black')
														+ '">{y}</span><br/>'
														+ '<span style="font-size:12px;color:silver">GB/ 1000 GB</span></div>'
											},
											tooltip : {
												valueSuffix : ''
											}
										} ]

									}));

	$('#dashboardapplication')
			.highcharts(
					Highcharts
							.merge(
									gaugeOptions,
									{
										yAxis : {
											min : 0,
											max : 1000,
											title : {
												text : modules[1]
											}
										},

										series : [ {
											name : modules[1],
											data : dataapplication,
											dataLabels : {
												format : '<div style="text-align:center"><span style="font-size:25px;color:'
														+ ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black')
														+ '">{y}</span><br/>'
														+ '<span style="font-size:12px;color:silver">GB/ 1000 GB</span></div>'
											},
											tooltip : {
												valueSuffix : ''
											}
										} ]

									}));

	$('#dashboardaumbycif')
			.highcharts(
					Highcharts
							.merge(
									gaugeOptions,
									{
										yAxis : {
											min : 0,
											max : 1000,
											title : {
												text : modules[2]
											}
										},

										series : [ {
											name : modules[2],
											data : dataaumbycif,
											dataLabels : {
												format : '<div style="text-align:center"><span style="font-size:25px;color:'
														+ ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black')
														+ '">{y}</span><br/>'
														+ '<span style="font-size:12px;color:silver">GB/ 1000 GB</span></div>'
											},
											tooltip : {
												valueSuffix : ''
											}
										} ]

									}));

	$('#dashboardaumbybranch')
			.highcharts(
					Highcharts
							.merge(
									gaugeOptions,
									{
										yAxis : {
											min : 0,
											max : 1000,
											title : {
												text : modules[3]
											}
										},

										series : [ {
											name : modules[3],
											data : dataaumbybranch,
											dataLabels : {
												format : '<div style="text-align:center"><span style="font-size:25px;color:'
														+ ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black')
														+ '">{y}</span><br/>'
														+ '<span style="font-size:12px;color:silver">GB/ 1000 GB</span></div>'
											},
											tooltip : {
												valueSuffix : ''
											}
										} ]

									}));

	$('#dashboardportholding')
			.highcharts(
					Highcharts
							.merge(
									gaugeOptions,
									{
										yAxis : {
											min : 0,
											max : 1000,
											title : {
												text : modules[4]
											}
										},

										series : [ {
											name : modules[4],
											data : dataportholding,
											dataLabels : {
												format : '<div style="text-align:center"><span style="font-size:25px;color:'
														+ ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black')
														+ '">{y}</span><br/>'
														+ '<span style="font-size:12px;color:silver">GB/ 1000 GB</span></div>'
											},
											tooltip : {
												valueSuffix : ''
											}
										} ]

									}));

	// Bring life to the dials
//	setTimeout(
//			function() {
//				var chart = $('#dashboardactivity').highcharts(), point, newVal, inc;
//
//				if (chart) {
//					point = chart.series[0].points[0];
//					inc = Math.round((Math.random() - 0.5) * 100);
//					newVal = point.y + inc;
//
//					if (newVal < 0 || newVal > 1000) {
//						newVal = point.y - inc;
//					}
//
//					point.update(newVal);
//				}
//
//				var chart = $('#dashboardapplication').highcharts(), point, newVal, inc;
//
//				if (chart) {
//					point = chart.series[0].points[0];
//					inc = Math.round((Math.random() - 0.5) * 100);
//					newVal = point.y + inc;
//
//					if (newVal < 0 || newVal > 1000) {
//						newVal = point.y - inc;
//					}
//
//					point.update(newVal);
//				}
//
//				var chart = $('#dashboardaumbycif').highcharts(), point, newVal, inc;
//
//				if (chart) {
//					point = chart.series[0].points[0];
//					inc = Math.round((Math.random() - 0.5) * 100);
//					newVal = point.y + inc;
//
//					if (newVal < 0 || newVal > 1000) {
//						newVal = point.y - inc;
//					}
//
//					point.update(newVal);
//				}
//
//				var chart = $('#dashboardaumbybranch').highcharts(), point, newVal, inc;
//
//				if (chart) {
//					point = chart.series[0].points[0];
//					inc = Math.round((Math.random() - 0.5) * 100);
//					newVal = point.y + inc;
//
//					if (newVal < 0 || newVal > 1000) {
//						newVal = point.y - inc;
//					}
//
//					point.update(newVal);
//				}
//
//				var chart = $('#dashboardportholding').highcharts(), point, newVal, inc;
//
//				if (chart) {
//					point = chart.series[0].points[0];
//					inc = Math.round((Math.random() - 0.5) * 100);
//					newVal = point.y + inc;
//
//					if (newVal < 0 || newVal > 1000) {
//						newVal = point.y - inc;
//					}
//
//					point.update(newVal);
//				}
//
//			}, 2000);
	
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});
	
});
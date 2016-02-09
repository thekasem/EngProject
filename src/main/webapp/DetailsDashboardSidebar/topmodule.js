$(function() {

	var monthName = [];
	var nameModule = [];
	var dataModule1 = [];
	var dataModule2 = [];
	var dataModule3 = [];
	var dataModule4 = [];
	var dataModule5 = [];

	$
			.ajax({
				type : "GET",
				url : 'TopModuleJson.action',
				data : {},
				success : function(response) {

					monthName = response.month;
					nameModule = response.nameModule;
					dataModule1 = response.dataModule1;
					dataModule2 = response.dataModule2;
					dataModule3 = response.dataModule3;
					dataModule4 = response.dataModule4;
					dataModule5 = response.dataModule5;
					$('#dashboardtopmodule')
							.highcharts(
									{
										chart : {
											type : 'spline'
										},
										title : {
											text : 'Data Monthly Users Top Modules',
										},
										subtitle : {
											text : '',
										},
										xAxis : {
											categories : monthName,
											crosshair : true
										},
										yAxis : {
											min : 0,
											title : {
												text : 'value of Module'
											}
										},
										tooltip : {
											headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
											pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
													+ '<td style="padding:0"><b>{point.y:.1f} used</b></td></tr>',
											footerFormat : '</table>',
											shared : true,
											useHTML : true
										},
										plotOptions : {
											column : {
												pointPadding : 0.2,
												borderWidth : 0
											},
											pie : {
												allowPointSelect : true,
											}
										},
										series : [
												{
													name : nameModule[0],
													data : dataModule1
												},
												{
													name : nameModule[1],
													data : dataModule2
												},
												{
													name : nameModule[2],
													data : dataModule3
												},
												{
													name : nameModule[3],
													data : dataModule4
												},
												{
													name : nameModule[4],
													data : dataModule5
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
													center : [ 80, -15 ],
													size : 80,
													showInLegend : false,
													dataLabels : {
														enabled : false
													}
												}],
									});
				},
				error : function(e) {
					alert('Error: ' + e);
				}
			});

});
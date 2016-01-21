$(function() {

	var y = [];
	var nameBrowser = [];
	var dataMSIE = [];
	var dataFirefox = [];
	var dateChrome = [];
	var dataSafari = [];
	var dataOpera = [];
	var dateProprietary = [];
	$
			.ajax({
				type : "GET",
				url : 'browserJson.action',
				data : {},
				success : function(response) {
					dataMSIE = response.dataMSIE;
					dataFirefox = response.dataFirefox;
					dateChrome = response.dataChrome;
					dataSafari = response.dataSafari;
					dataOpera = response.dataOpera;
					dateProprietary = response.dateProprietary;
					nameBrowser = response.nameBrowser;
					y = response.y;
					var colors = Highcharts.getOptions().colors, categories = nameBrowser, data = [
							{
								y : y[0],
								color : colors[0],
								drilldown : {
									name : nameBrowser[0],
									categories : [ 'MSIE 6.0', 'MSIE 7.0',
											'MSIE 8.0', 'MSIE 9.0',
											'MSIE 10.0', 'MSIE 11.0' ],
									data : dataMSIE,
									color : colors[0]
								}
							},
							{
								y : y[1],
								color : colors[1],
								drilldown : {
									name : nameBrowser[1],
									categories : [ 'Firefox v31',
											'Firefox v32', 'Firefox v33',
											'Firefox v35', 'Firefox v36',
											'Firefox v37', 'Firefox v38' ],
									data : dataFirefox,
									color : colors[1]
								}
							},
							{
								y : y[2],
								color : colors[2],
								drilldown : {
									name : nameBrowser[2],
									categories : [ 'Chrome v30.0',
											'Chrome v31.0', 'Chrome v32.0',
											'Chrome v33.0', 'Chrome v34.0',
											'Chrome v35.0', 'Chrome v36.0',
											'Chrome v37.0', 'Chrome v38.0',
											'Chrome v39.0', 'Chrome v40.0',
											'Chrome v41.0', 'Chrome v42.0',
											'Chrome v43.0' ],
									data : dateChrome,
									color : colors[2]
								}
							},
							{
								y : y[3],
								color : colors[3],
								drilldown : {
									name : nameBrowser[3],
									categories : [ 'Safari v5.0',
											'Safari v5.1', 'Safari v6.1',
											'Safari v6.2', 'Safari v7.0',
											'Safari v7.1', 'Safari v8.0' ],
									data : dataSafari,
									color : colors[3]
								}
							},
							{
								y : y[4],
								color : colors[4],
								drilldown : {
									name : nameBrowser[4],
									categories : [ 'Opera v12.x', 'Opera v27',
											'Opera v28', 'Opera v29' ],
									data : dataOpera,
									color : colors[4]
								}
							}, {
								y : y[5],
								color : colors[5],
								drilldown : {
									name : 'Proprietary or Undetectable',
									categories : [],
									data : dateProprietary,
									color : colors[5]
								}
							} ], browserData = [], versionsData = [], i, j, dataLen = data.length, drillDataLen, brightness;

					// Build the data arrays
					for (i = 0; i < dataLen; i += 1) {

						// add browser data
						browserData.push({
							name : categories[i],
							y : data[i].y,
							color : data[i].color
						});

						// add version data
						drillDataLen = data[i].drilldown.data.length;
						for (j = 0; j < drillDataLen; j += 1) {
							brightness = 0.2 - (j / drillDataLen) / 5;
							versionsData.push({
								name : data[i].drilldown.categories[j],
								y : data[i].drilldown.data[j],
								color : Highcharts.Color(data[i].color)
										.brighten(brightness).get()
							});
						}
					}

					// Create the chart
					$('#dashboardbrowser')
							.highcharts(
									{
										chart : {
											type : 'pie'
										},
										title : {
											text : ''
										},
										subtitle : {
											text : ''
										},
										yAxis : {
											title : {
												text : ''
											}
										},
										plotOptions : {
											pie : {
												shadow : false,
												center : [ '50%', '50%' ]
											}
										},
										tooltip : {
											valueSuffix : '%'
										},
										series : [
												{
													name : 'Browsers',
													data : browserData,
													size : '60%',
													dataLabels : {
														formatter : function() {
															return this.y > 5 ? this.point.name
																	: null;
														},
														color : '#ffffff',
														distance : -30
													}
												},
												{
													name : 'Versions',
													data : versionsData,
													size : '80%',
													innerSize : '60%',
													dataLabels : {
														formatter : function() {
															// display only if
															// larger than 1
															return this.y > 1 ? '<b>'
																	+ this.point.name
																	+ ':</b> '
																	+ this.y
																	+ '%'
																	: null;
														}
													}
												} ]
									});
				},
				error : function(e) {
					alert('Error: ' + e);
				}
			});

});
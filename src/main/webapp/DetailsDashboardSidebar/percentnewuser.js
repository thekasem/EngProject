$(function() {

	var dateLastYear = [];
	var dateCurrentYear = [];
	var monthName = [];

	$
			.ajax({
				type : "GET",
				url : 'percentNewUserJson.action',
				data : {},
				success : function(response) {
					monthName = response.month;
					dateLastYear = response.dataLastYear;
					dateCurrentYear = response.dataCurrentYear;
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
											categories : monthName
										},

										yAxis : {
											allowDecimals : false,
											min : 0,
											title : {
												text : 'Number of Percent'
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
											name : 'Current Year',
											data : dateCurrentYear,
											stack : 'male'
										}, {
											name : 'Last Year',
											data : dateLastYear,
											stack : 'male'
										} ]
									});
				},
				error : function(e) {
					alert('Error: ' + e);
				}
			});

});
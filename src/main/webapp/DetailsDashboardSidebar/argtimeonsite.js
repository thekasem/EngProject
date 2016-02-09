$(function() {
	
	var timeonsite = "";
	
	var dataaverage = [];

	$.ajax({
		type : "GET",
		url : 'averageJson.action',
		data : {},
		success : function(response) {
			
			dataaverage = response.dataaverage;
			
			timeonsite = response.timeonsite;
			
			$('#dashboardaverage').highcharts({
				chart : {
					type : 'column',
					margin : 75,
					options3d : {
						enabled : true,
						alpha : 10,
						beta : 25,
						depth : 70
					}
				},
				title : {
					text : 'Data Monthly Users Average Time On Site'
				},
				subtitle : {
					text : ''
				},
				plotOptions : {
					column : {
						depth : 25
					}
				},
				xAxis : {
					categories : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
				},
				yAxis : {
					title : {
						text : 'Hour'
					}
				},
				series : [ {
					name : timeonsite,
					data : dataaverage
				} ]
			});
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});
});
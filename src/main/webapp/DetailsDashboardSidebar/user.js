$(function() {
	var name1;
	var name2;
	var name3;
	var name4;
	$.ajax({
		type : "GET",
		url : 'UserJson.action',
		data : {},
		success : function(response) {
			$('#dashboarduser').highcharts(
					{
						chart : {
							type : 'area'
						},
						title : {
							text : ''
						},
						xAxis : {
							categories : [ 'Apples', 'Oranges', 'Pears',
									'Grapes', 'Bananas' ]
						},
						credits : {
							enabled : false
						},
						series : [ {
							name : 'John',
							data : [ 5, 3, 4, 7, 2 ]
						}, {
							name : 'Jane',
							data : [ 2, -2, -3, 2, 1 ]
						}, {
							name : 'kasemsun',
							data : [ 5, 5, 5, 5, 5 ]
						}, {
							name : 'Joe',
							data : [ 3, 4, 4, -2, 5 ]
						} ]
					});
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});
});
$(function() {
	
	var customer = "";
	
	var datacustomer1 = [];
	var datacustomer2 = [];
	
	$.ajax({
		type : "GET",
		url : 'customerJson.action',
		data : {},
		success : function(response) {

			customer = response.customer;
			
			datacustomer1 = response.datacustomer1;
			datacustomer2 = response.datacustomer2;
			
			$('#dashboardcustomer').highcharts(
					{

						chart : {
							type : ''
						},

						title : {
							text : 'Data Monthly Customers'
						},

						xAxis : {
							categories : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
						},

						yAxis : {
							allowDecimals : false,
							min : 0,
							title : {
								text : 'Number of Customers'
							}
						},

						tooltip : {
							formatter : function() {
								return '<b>' + this.x + '</b><br/>'
										+ this.series.name + ': ' + this.y
										+ '<br/>' + 'Total: '
										+ this.point.stackTotal;
							}
						},

						plotOptions : {
							column : {
								stacking : 'normal'
							}
						},

						series : [ {
							name : 'Current Year',
							data : datacustomer1,
							stack : ''
						}, {
							name : 'Last Year',
							data : datacustomer2,
							stack : ''
						}]
					});
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});
});
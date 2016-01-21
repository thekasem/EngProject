$(function() {
	
	var customer = "";
	
	var datacustomer = [];
	
	$.ajax({
		type : "GET",
		url : 'customerJson.action',
		data : {},
		success : function(response) {

			customer = response.customer;
			
			datacustomer = response.datacustomer;
			
			$('#dashboardcustomer').highcharts(
					{

						chart : {
							type : ''
						},

						title : {
							text : ''
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
							name : customer,
							data : datacustomer,
							stack : ''
						} ]
					});
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});
});
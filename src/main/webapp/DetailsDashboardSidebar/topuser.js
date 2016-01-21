$(function() {

	var user = [];

	var datauser1 = [];
	var datauser2 = [];
	var datauser3 = [];
	var datauser4 = [];
	var datauser5 = [];
	var datauser6 = [];
	var datauser7 = [];
	var datauser8 = [];
	var datauser9 = [];
	var datauser10 = [];

	var sex = [];

	$.ajax({
		type : "GET",
		url : 'TopUserJson.action',
		data : {},
		success : function(response) {
			datauser1 = response.datauser1;
			datauser2 = response.datauser2;
			datauser3 = response.datauser3;
			datauser4 = response.datauser4;
			datauser5 = response.datauser5;
			datauser6 = response.datauser6;
			datauser7 = response.datauser7;
			datauser8 = response.datauser8;
			datauser9 = response.datauser9;
			datauser10 = response.datauser10;

			user = response.user;

			sex = response.sex;
			$('#dashboardtopuser').highcharts(
					{
						chart : {
							type : 'column'
						},
						title : {
							text : ''
						},
						subtitle : {
							text : ''
						},
						xAxis : {
							categories : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
							tickmarkPlacement : 'on',
							title : {
								enabled : false
							}
						},
						yAxis : {
							title : {
								text : 'Time'
							},
							labels : {
								formatter : function() {
									return this.value / 1000;
								}
							}
						},
						tooltip : {
							shared : true,
							valueSuffix : ' millions'
						},
						plotOptions : {
							area : {
								stacking : 'normal',
								lineColor : '#666666',
								lineWidth : 1,
								marker : {
									lineWidth : 1,
									lineColor : '#666666'
								}
							}
						},
						series : [ {
							name : user[0],
							data : datauser1,
							stack : sex[1]
						}, {
							name : user[1],
							data : datauser2,
							stack : sex[0]
						}, {
							name : user[2],
							data : datauser3,
							stack : sex[0]
						}, {
							name : user[3],
							data : datauser4,
							stack : sex[1]
						}, {
							name : user[4],
							data : datauser5,
							stack : sex[0]
						}, {
							name : user[5],
							data : datauser6,
							stack : sex[1]
						}, {
							name : user[6],
							data : datauser7,
							stack : sex[0]
						}, {
							name : user[7],
							data : datauser8,
							stack : sex[0]
						}, {
							name : user[8],
							data : datauser9,
							stack : sex[0]
						}, {
							name : user[9],
							data : datauser10,
							stack : sex[0]
						} ]
					});
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});
});
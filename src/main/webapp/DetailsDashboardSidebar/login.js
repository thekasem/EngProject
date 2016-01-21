$(function() {
	 var test1 = [];
	 var test2 = [];
	 var test3 ="";
	 var test4 ="";
	$.ajax({
		  type : "GET",
		  url : 'loginJson.action',
		  data : {},
		  success : function(response) {
			  test1 = response.numberarray1;
			  test2 = response.numberarray2;
			  test3 = response.text1;
			  test4 = response.text2;	  
		    $('#dashboardlogin')
			.highcharts(
					{
						chart : {
							type : 'area'
						},
						title : {
							text : ''
						},
						subtitle : {
							text : ''
						},
						xAxis : {
							allowDecimals : false,
							labels : {
								formatter : function() {
									return this.value; // clean, unformatted
														// number for year
								}
							}
						},
						yAxis : {
							title : {
								text : 'Nuclear weapon states'
							},
							labels : {
								formatter : function() {
									return this.value / 1000 + 'k';
								}
							}
						},
						tooltip : {
							pointFormat : '{series.name} produced <b>{point.y:,.0f}</b><br/>warheads in {point.x}'
						},
						plotOptions : {
							area : {
								pointStart : 1,
								marker : {
									enabled : false,
									symbol : 'circle',
									radius : 2,
									states : {
										hover : {
											enabled : true
										}
									}
								}
							}
						},
						series : [
								{
									name : test3,
									data : test1
								},
								{
									name : test4,
									data : test2
								} ]
					});
		  },
		  error : function(e) {
		   alert('Error: ' + e);
		  }
		 });
	
	
	
});
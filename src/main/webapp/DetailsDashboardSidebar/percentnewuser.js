$(function() {

	var dateLastYear = [];
	var dateCurrentYear = [];
	var monthName = [];
	var avgDate = [];

	$
			.ajax({
				type : "GET",
				url : 'percentNewUserJson.action',
				data : {},
				success : function(response) {
					monthName = response.month;
					dateLastYear = response.dataLastYear;
					dateCurrentYear = response.dataCurrentYear;
					avgDate = response.avgDate;
					$('#dashboardnewuser').highcharts({
				        title: {
				            text: ' '
				        },
				        xAxis: {
				            categories: monthName
				        },
				        labels: {
				            items: [{
				                html: 'Total percent user/year',
				                style: {
				                    left: '50px',
				                    top: '18px',
				                    color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
				                }
				            }]
				        },
				        series: [{
				            type: 'column',
				            name: 'Current Year',
				            data: dateCurrentYear,
				            color: Highcharts.getOptions().colors[1]
				        }, {
				            type: 'column',
				            name: 'Last Year',
				            data: dateLastYear,
				          	color: Highcharts.getOptions().colors[2]
				        },  {
				            type: 'spline',
				            name: 'Average',
				            data: avgDate,
				            marker: {
				                lineWidth: 2,
				                lineColor: Highcharts.getOptions().colors[3],
				                fillColor: 'white'
				            }
				        }, {
				            type: 'pie',
				            name: 'Total consumption',
				            data: [{
				                name: 'Current Year',
				                y: sumArray(dateCurrentYear),
				                color: Highcharts.getOptions().colors[1] // Jane's color
				            }, {
				                name: 'Last Year',
				                y: sumArray(dateLastYear),
				                color: Highcharts.getOptions().colors[2] // John's color
				            }],
				            center: [100, 80],
				            size: 100,
				            showInLegend: false,
				            dataLabels: {
				                enabled: false
				            }
				        }]
				    });
				},
				error : function(e) {
					alert('Error: ' + e);
				}
			});

});
function sumArray(array) {
	var result = 0;
	for (var int = 0; int < array.length; int++) {
		result = array[int] +result;
	}
	return result;
}
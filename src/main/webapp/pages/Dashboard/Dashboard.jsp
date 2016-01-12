<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DashBoard</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../../js/highcharts.js"></script>
<script src="../../js/highcharts-3d.js"></script>
<script src="../../js/highcharts-more.js"></script>
<script src="../../js/funnel.js"></script>
<script src="../../js/exporting.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body style="background: #FEFCFF">
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container" id="main">
		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default"><span class="fa fa-list">
						Dashboard</span></span>
			</h3>
		</div>

		<div class="row" style="">
			<div class="col-md-4 col-sm-6">
				<div class="well">
					<form class="form">
						<h4>Browsers</h4>
						<div class="input-group text-center">
							<div class="col-md-4">
								<div id="browser"
									style="min-width: 310px; height: 300px; max-width: 600px;"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-8 col-sm-6">
				<div class="well">
					<form class="form">
						<h4>Login</h4>
						<div class="input-group text-center">
							<div class="col-md-4">
								<div id="login"
									style="min-width: 700px; height: 300px; max-width: 700px;"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="row" style="margin-left: 10px; margin-right: 10px;">
			<div class="col-md-8 col-sm-6">
				<div class="panel panel-info" style="margin: auto;">
					<div class="panel-heading">
						<h4>User</h4>
					</div>
					<div class="panel-body" style="height: 330px;">
						<div id="result" style="margin: auto; margin-top: 30px;"></div>
						<table id="table-sparkline"
							style="margin: auto; margin-top: 30px;">
							<thead>
								<tr>
									<th>State</th>
									<th>Income</th>
									<th>Income per quarter</th>
									<th>Costs</th>
									<th>Costs per quarter</th>
									<th>Result</th>
									<th>Result per quarter</th>
								</tr>
								<hr>
							</thead>
							<tbody id="tbody-sparkline">
								<tr>
									<th>Alabama</th>
									<td>254</td>
									<td data-sparkline="71, 78, 39, 66 " />
									<td>296</td>
									<td data-sparkline="68, 52, 80, 96 " />
									<td>-42</td>
									<td data-sparkline="3, 26, -41, -30 ; column" />
								</tr>
								<tr>
									<th>Alaska</th>
									<td>246</td>
									<td data-sparkline="87, 44, 74, 41 " />
									<td>181</td>
									<td data-sparkline="29, 54, 73, 25 " />
									<td>65</td>
									<td data-sparkline="58, -10, 1, 16 ; column" />
								</tr>
								<tr>
									<th>Arizona</th>
									<td>101</td>
									<td data-sparkline="56, 12, 8, 25 " />
									<td>191</td>
									<td data-sparkline="69, 14, 53, 55 " />
									<td>-90</td>
									<td data-sparkline="-13, -2, -45, -30 ; column" />
								</tr>
								<tr>
									<th>Arkansas</th>
									<td>303</td>
									<td data-sparkline="81, 50, 78, 94 " />
									<td>76</td>
									<td data-sparkline="36, 15, 14, 11 " />
									<td>227</td>
									<td data-sparkline="45, 35, 64, 83 ; column" />
								</tr>
								<tr>
									<th>California</th>
									<td>200</td>
									<td data-sparkline="61, 80, 10, 49 " />
									<td>217</td>
									<td data-sparkline="100, 8, 52, 57 " />
									<td>-17</td>
									<td data-sparkline="-39, 72, -42, -8 ; column" />
								</tr>
								<tr>
									<th>Wisconsin</th>
									<td>183</td>
									<td data-sparkline="24, 55, 21, 83 " />
									<td>224</td>
									<td data-sparkline="80, 64, 13, 67 " />
									<td>-41</td>
									<td data-sparkline="-56, -9, 8, 16 ; column" />
								</tr>
								<tr>
									<th>Wyoming</th>
									<td>231</td>
									<td data-sparkline="52, 49, 97, 33 " />
									<td>251</td>
									<td data-sparkline="96, 50, 23, 82 " />
									<td>-20</td>
									<td data-sparkline="-44, -1, 74, -49 ; column" />
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4>Top Module</h4>
					</div>
					<div class="panel-body">
						<div class="row col-md-12">
							<div class="col-md-4">
								<div id="topmodule" style="width: 300px; height: 300px;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>









		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="well">
					<form class="form">
						<h4>Percent New User</h4>
						<div class="input-group text-center">
							<div class="col-md-4">
								<div id="newuser" style="width: 500px; height: 300px;"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="well">
					<h4>Customers</h4>
					<div class="input-group text-center">
						<div class="col-md-4">
							<div id="customer" style="width: 500px; height: 300px;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="row" style="margin-left: 10px; margin-right: 10px;">
			<div class="col-md-5 col-sm-6">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4>Top User</h4>
					</div>
					<div class="panel-body">
						<div class="row col-md-12">
							<div class="col-md-4">
								<div id="topuser" style="width: 390px; height: 300px;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="col-md-7 col-sm-6" style="margin: auto;">
				<div class="panel panel-info" style="margin: auto;">
					<div class="panel-heading">
						<h4>Average Time On Site</h4>
					</div>
					<div class="panel-body">
						<div id="average" style="width: 600px; height: 300px;"></div>
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-8 col-sm-6">
				<div class="well">
					<form class="form">
						<h4>View AUM</h4>
						<div class="input-group text-center">
							<div class="col-md-4">
								<div id="viewaum" style="width: 700px; height: 300px;"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="well">
					<h4>Disk Usage</h4>
					<div class="input-group text-center">
						<div id="diskusage" style="width: 300px; height: 300px;"></div>
					</div>
				</div>
			</div>
		</div>
		<hr>
	</div>

	<script type="text/javascript">
$(function () {
    $('#browser').highcharts({
    	credits: {
            enabled: false
        },
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: 0,
            plotShadow: false
        },
        title: {
            text: 'Browser',
            align: 'center',
            verticalAlign: 'middle',
            y: 40
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                dataLabels: {
                    enabled: true,
                    distance: -50,
                    style: {
                        fontWeight: 'bold',
                        color: 'white',
                        textShadow: '0px 1px 2px black'
                    }
                },
                startAngle: -90,
                endAngle: 90,
                center: ['50%', '75%']
            }
        },
        series: [{
            type: 'pie',
            name: 'Browser share',
            innerSize: '50%',
            data: [
                ['Firefox',   10.38],
                ['IE',       56.33],
                ['Chrome', 24.03],
                ['Safari',    4.77],
                ['Opera',     0.91],
                {
                    name: 'Proprietary or Undetectable',
                    y: 0.2,
                    dataLabels: {
                        enabled: false
                    }
                }
            ]
        }]
    });
});


$(function () {
    $('#login').highcharts({
    	credits: {
            enabled: false
        },
        chart: {
            type: 'area'
        },
        title: {
            text: 'Login'
        },
        subtitle: {
            text: 'Source: Wikipedia.org'
        },
        xAxis: {
            categories: ['1750', '1800', '1850', '1900', '1950', '1999', '2050'],
            tickmarkPlacement: 'on',
            title: {
                enabled: false
            }
        },
        yAxis: {
            title: {
                text: 'Percent'
            }
        },
        tooltip: {
            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.percentage:.1f}%</b> ({point.y:,.0f} millions)<br/>',
            shared: true
        },
        plotOptions: {
            area: {
                stacking: 'percent',
                lineColor: '#ffffff',
                lineWidth: 1,
                marker: {
                    lineWidth: 1,
                    lineColor: '#ffffff'
                }
            }
        },
        series: [{
            name: 'Asia',
            data: [502, 635, 809, 947, 1402, 3634, 5268]
        }, {
            name: 'Africa',
            data: [106, 107, 111, 133, 221, 767, 1766]
        }, {
            name: 'Europe',
            data: [163, 203, 276, 408, 547, 729, 628]
        }, {
            name: 'America',
            data: [18, 31, 54, 156, 339, 818, 1201]
        }, {
            name: 'Oceania',
            data: [2, 2, 2, 6, 13, 30, 46]
        }]
    });
});

$(function () {
    /**
     * Create a constructor for sparklines that takes some sensible defaults and merges in the individual
     * chart options. This function is also available from the jQuery plugin as $(element).highcharts('SparkLine').
     */
    Highcharts.SparkLine = function (a, b, c) {
        var hasRenderToArg = typeof a === 'string' || a.nodeName,
            options = arguments[hasRenderToArg ? 1 : 0],
            defaultOptions = {
                chart: {
                    renderTo: (options.chart && options.chart.renderTo) || this,
                    backgroundColor: null,
                    borderWidth: 0,
                    type: 'area',
                    margin: [2, 0, 2, 0],
                    width: 120,
                    height: 20,
                    style: {
                        overflow: 'visible'
                    },
                    skipClone: true
                },
                title: {
                    text: ''
                },
                credits: {
                    enabled: false
                },
                xAxis: {
                    labels: {
                        enabled: false
                    },
                    title: {
                        text: null
                    },
                    startOnTick: false,
                    endOnTick: false,
                    tickPositions: []
                },
                yAxis: {
                    endOnTick: false,
                    startOnTick: false,
                    labels: {
                        enabled: false
                    },
                    title: {
                        text: null
                    },
                    tickPositions: [0]
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    backgroundColor: null,
                    borderWidth: 0,
                    shadow: false,
                    useHTML: true,
                    hideDelay: 0,
                    shared: true,
                    padding: 0,
                    positioner: function (w, h, point) {
                        return { x: point.plotX - w / 2, y: point.plotY - h };
                    }
                },
                plotOptions: {
                    series: {
                        animation: false,
                        lineWidth: 1,
                        shadow: false,
                        states: {
                            hover: {
                                lineWidth: 1
                            }
                        },
                        marker: {
                            radius: 1,
                            states: {
                                hover: {
                                    radius: 2
                                }
                            }
                        },
                        fillOpacity: 0.25
                    },
                    column: {
                        negativeColor: '#910000',
                        borderColor: 'silver'
                    }
                }
            };

        options = Highcharts.merge(defaultOptions, options);

        return hasRenderToArg ?
            new Highcharts.Chart(a, options, c) :
            new Highcharts.Chart(options, b);
    };

    var start = +new Date(),
        $tds = $('td[data-sparkline]'),
        fullLen = $tds.length,
        n = 0;

    // Creating 153 sparkline charts is quite fast in modern browsers, but IE8 and mobile
    // can take some seconds, so we split the input into chunks and apply them in timeouts
    // in order avoid locking up the browser process and allow interaction.
    function doChunk() {
        var time = +new Date(),
            i,
            len = $tds.length,
            $td,
            stringdata,
            arr,
            data,
            chart;

        for (i = 0; i < len; i += 1) {
            $td = $($tds[i]);
            stringdata = $td.data('sparkline');
            arr = stringdata.split('; ');
            data = $.map(arr[0].split(', '), parseFloat);
            chart = {};

            if (arr[1]) {
                chart.type = arr[1];
            }
            $td.highcharts('SparkLine', {
                series: [{
                    data: data,
                    pointStart: 1
                }],
                tooltip: {
                    headerFormat: '<span style="font-size: 10px">' + $td.parent().find('th').html() + ', Q{point.x}:</span><br/>',
                    pointFormat: '<b>{point.y}.000</b> USD'
                },
                chart: chart
            });

            n += 1;

            // If the process takes too much time, run a timeout to allow interaction with the browser
            if (new Date() - time > 500) {
                $tds.splice(0, i + 1);
                setTimeout(doChunk, 0);
                break;
            }

            // Print a feedback on the performance
            if (n === fullLen) {
                $('#result').html('Generated ' + fullLen + ' sparklines in ' + (new Date() - start) + ' ms');
            }
        }
    }
    doChunk();

});

$(function () {
    $('#average').highcharts({
    	credits: {
            enabled: false
        },
        chart: {
            type: 'bar'
        },
        title: {
            text: 'Average Time On Site'
        },
        subtitle: {
            text: 'Source: <a href="https://en.wikipedia.org/wiki/World_population">Wikipedia.org</a>'
        },
        xAxis: {
            categories: ['Africa', 'America', 'Asia', 'Europe', 'Oceania'],
            title: {
                text: null
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Population (millions)',
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: ' millions'
        },
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true
                }
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'top',
            x: -40,
            y: 80,
            floating: true,
            borderWidth: 1,
            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
            shadow: true
        },
        credits: {
            enabled: false
        },
        series: [{
            name: 'Year 1800',
            data: [107, 31, 635, 203, 2]
        }, {
            name: 'Year 1900',
            data: [133, 156, 947, 408, 6]
        }, {
            name: 'Year 2012',
            data: [1052, 954, 4250, 740, 38]
        }]
    });
});

$(function () {
    // Set up the chart
    var chart = new Highcharts.Chart({
    	credits: {
            enabled: false
        },
        chart: {
            renderTo: 'newuser',
            type: 'column',
            margin: 75,
            options3d: {
                enabled: true,
                alpha: 15,
                beta: 15,
                depth: 50,
                viewDistance: 25
            }
        },
        title: {
            text: 'Percent New User'
        },
        subtitle: {
            text: 'Test options by dragging the sliders below'
        },
        plotOptions: {
            column: {
                depth: 25
            }
        },
        series: [{
            data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
        }]
    });

    function showValues() {
        $('#R0-value').html(chart.options.chart.options3d.alpha);
        $('#R1-value').html(chart.options.chart.options3d.beta);
    }

    // Activate the sliders
    $('#R0').on('change', function () {
        chart.options.chart.options3d.alpha = this.value;
        showValues();
        chart.redraw(false);
    });
    $('#R1').on('change', function () {
        chart.options.chart.options3d.beta = this.value;
        showValues();
        chart.redraw(false);
    });

    showValues();
});




$(function () {

    $(document).ready(function () {

        // Build the chart
        $('#topmodule').highcharts({
        	credits: {
                enabled: false
            },
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Top Module'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                name: 'Brands',
                colorByPoint: true,
                data: [{
                    name: 'Microsoft Internet Explorer',
                    y: 56.33
                }, {
                    name: 'Chrome',
                    y: 24.03,
                    sliced: true,
                    selected: true
                }, {
                    name: 'Firefox',
                    y: 10.38
                }, {
                    name: 'Safari',
                    y: 4.77
                }, {
                    name: 'Opera',
                    y: 0.91
                }, {
                    name: 'Proprietary or Undetectable',
                    y: 0.2
                }]
            }]
        });
    });
});

$(function () {

    $('#topuser').highcharts({
    	credits: {
            enabled: false
        },
        chart: {
            type: 'pyramid',
            marginRight: 100
        },
        title: {
            text: 'Top User',
            x: -50
        },
        plotOptions: {
            series: {
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b> ({point.y:,.0f})',
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
                    softConnector: true
                }
            }
        },
        legend: {
            enabled: false
        },
        series: [{
            name: 'Unique users',
            data: [
                ['Website visits',      15654],
                ['Downloads',            4064],
                ['Requested price list', 1987],
                ['Invoice sent',          976],
                ['Finalized',             846]
            ]
        }]
    });
});


$(function () {
    $('#customer').highcharts({
    	credits: {
            enabled: false
        },
        chart: {
            type: 'column',
            margin: 75,
        },
        title: {
            text: 'Customer'
        },
        subtitle: {
            text: ''
        },
        plotOptions: {
            column: {
                depth: 25
            }
        },
        xAxis: {
            categories: Highcharts.getOptions().lang.shortMonths
        },
        yAxis: {
            title: {
                text: null
            }
        },
        series: [{
            name: 'Sales',
            data: [2, 3, null, 4, 0, 5, 1, 4, 6, 3]
        }]
    });
});

$(function () {
    $('#viewaum').highcharts({
    	credits: {
            enabled: false
        },
        chart: {
            type: 'spline'
        },
        title: {
            text: 'View AUM'
        },
        subtitle: {
            text: 'Irregular time data in Highcharts JS'
        },
        xAxis: {
            type: 'datetime',
            dateTimeLabelFormats: { // don't display the dummy year
                month: '%e. %b',
                year: '%b'
            },
            title: {
                text: 'Date'
            }
        },
        yAxis: {
            title: {
                text: 'Snow depth (m)'
            },
            min: 0
        },
        tooltip: {
            headerFormat: '<b>{series.name}</b><br>',
            pointFormat: '{point.x:%e. %b}: {point.y:.2f} m'
        },

        plotOptions: {
            spline: {
                marker: {
                    enabled: true
                }
            }
        },

        series: [{
            name: 'AUM By CIF',
            // Define the data points. All series have a dummy year
            // of 1970/71 in order to be compared on the same x axis. Note
            // that in JavaScript, months start at 0 for January, 1 for February etc.
            data: [
                [Date.UTC(1970, 9, 21), 0],
                [Date.UTC(1970, 10, 4), 0.28],
                [Date.UTC(1970, 10, 9), 0.25],
                [Date.UTC(1970, 10, 27), 0.2],
                [Date.UTC(1970, 11, 2), 0.28],
                [Date.UTC(1970, 11, 26), 0.28],
                [Date.UTC(1970, 11, 29), 0.47],
                [Date.UTC(1971, 0, 11), 0.79],
                [Date.UTC(1971, 0, 26), 0.72],
                [Date.UTC(1971, 1, 3), 1.02],
                [Date.UTC(1971, 1, 11), 1.12],
                [Date.UTC(1971, 1, 25), 1.2],
                [Date.UTC(1971, 2, 11), 1.18],
                [Date.UTC(1971, 3, 11), 1.19],
                [Date.UTC(1971, 4, 1), 1.85],
                [Date.UTC(1971, 4, 5), 2.22],
                [Date.UTC(1971, 4, 19), 1.15],
                [Date.UTC(1971, 5, 3), 0]
            ]
        }, {
            name: 'AUM By Branch',
            data: [
                [Date.UTC(1970, 9, 29), 0],
                [Date.UTC(1970, 10, 9), 0.4],
                [Date.UTC(1970, 11, 1), 0.25],
                [Date.UTC(1971, 0, 1), 1.66],
                [Date.UTC(1971, 0, 10), 1.8],
                [Date.UTC(1971, 1, 19), 1.76],
                [Date.UTC(1971, 2, 25), 2.62],
                [Date.UTC(1971, 3, 19), 2.41],
                [Date.UTC(1971, 3, 30), 2.05],
                [Date.UTC(1971, 4, 14), 1.7],
                [Date.UTC(1971, 4, 24), 1.1],
                [Date.UTC(1971, 5, 10), 0]
            ]
        }, {
            name: 'PortHoldingBySubAccount',
            data: [
                [Date.UTC(1970, 10, 25), 0],
                [Date.UTC(1970, 11, 6), 0.25],
                [Date.UTC(1970, 11, 20), 1.41],
                [Date.UTC(1970, 11, 25), 1.64],
                [Date.UTC(1971, 0, 4), 1.6],
                [Date.UTC(1971, 0, 17), 2.55],
                [Date.UTC(1971, 0, 24), 2.62],
                [Date.UTC(1971, 1, 4), 2.5],
                [Date.UTC(1971, 1, 14), 2.42],
                [Date.UTC(1971, 2, 6), 2.74],
                [Date.UTC(1971, 2, 14), 2.62],
                [Date.UTC(1971, 2, 24), 2.6],
                [Date.UTC(1971, 3, 2), 2.81],
                [Date.UTC(1971, 3, 12), 2.63],
                [Date.UTC(1971, 3, 28), 2.77],
                [Date.UTC(1971, 4, 5), 2.68],
                [Date.UTC(1971, 4, 10), 2.56],
                [Date.UTC(1971, 4, 15), 2.39],
                [Date.UTC(1971, 4, 20), 2.3],
                [Date.UTC(1971, 5, 5), 2],
                [Date.UTC(1971, 5, 10), 1.85],
                [Date.UTC(1971, 5, 15), 1.49],
                [Date.UTC(1971, 5, 23), 1.08]
            ]
        }]
    });
});

$(function () {

    $('#diskusage').highcharts({
    	credits: {
            enabled: false
        },
        chart: {
            type: 'gauge',
            plotBackgroundColor: null,
            plotBackgroundImage: null,
            plotBorderWidth: 0,
            plotShadow: false
        },

        title: {
            text: 'Disk Usage'
        },

        pane: {
            startAngle: -150,
            endAngle: 150,
            background: [{
                backgroundColor: {
                    linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                    stops: [
                        [0, '#FFF'],
                        [1, '#333']
                    ]
                },
                borderWidth: 0,
                outerRadius: '109%'
            }, {
                backgroundColor: {
                    linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                    stops: [
                        [0, '#333'],
                        [1, '#FFF']
                    ]
                },
                borderWidth: 1,
                outerRadius: '107%'
            }, {
                // default background
            }, {
                backgroundColor: '#DDD',
                borderWidth: 0,
                outerRadius: '105%',
                innerRadius: '103%'
            }]
        },

        // the value axis
        yAxis: {
            min: 0,
            max: 200,

            minorTickInterval: 'auto',
            minorTickWidth: 1,
            minorTickLength: 10,
            minorTickPosition: 'inside',
            minorTickColor: '#666',

            tickPixelInterval: 30,
            tickWidth: 2,
            tickPosition: 'inside',
            tickLength: 10,
            tickColor: '#666',
            labels: {
                step: 2,
                rotation: 'auto'
            },
            title: {
                text: 'km/h'
            },
            plotBands: [{
                from: 0,
                to: 120,
                color: '#55BF3B' // green
            }, {
                from: 120,
                to: 160,
                color: '#DDDF0D' // yellow
            }, {
                from: 160,
                to: 200,
                color: '#DF5353' // red
            }]
        },

        series: [{
            name: 'Speed',
            data: [80],
            tooltip: {
                valueSuffix: ' km/h'
            }
        }]

    },
    // Add some life
    function (chart) {
        if (!chart.renderer.forExport) {
            setInterval(function () {
                var point = chart.series[0].points[0],
                    newVal,
                    inc = Math.round((Math.random() - 0.5) * 20);

                newVal = point.y + inc;
                if (newVal < 0 || newVal > 200) {
                    newVal = point.y - inc;
                }

                point.update(newVal);

            }, 3000);
        }
    });
});

</script>
	<!-- <style> -->
	<!-- rect{ display: none; } -->
	<!-- </style> -->

</body>




</body>


</html>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Application Archive List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body style="background: #FEFCFF">
<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="container" style="margin-top: 50px;">
			<a type="button" class="btn btn-info" href="ApplicationArchiveSearch.jsp">Search</a> 
			<a type="button" class="btn btn-info" href="ApplicationArchiveList.jsp">Refresh</a> 
			<a type="button" class="btn btn-info" href="ApplicationArchiveAdd.jsp">ADD	Archive</a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default">List</span>
			</h3>
		</div>

		<table class="table table-striped table-hover ">
			<thead style="color: #4863A0;">
				<th>Event ID</th>
				<th>Date</th>
				<th>Time</th>
				<th>Level</th>
				<th>Entity Class</th>
				<th>Mode</th>
				<th>Client IP</th>
				<th>Front Server IP</th>
				<th>Member Name</th>
				<th>Activity Log ID</th>
				<th>User Archive</th>
				<th>Date Archive</th>
				<th>Condition Archive</th>
			</thead>
			<tbody>
				<tr style="color: #98AFC7;">
					<th>1</th>
					<th>20/10/2015</th>
					<th>12:12:59</th>
					<th>Test</th>
					<th>classTest</th>
					<th>Test</th>
					<th>192.155.125.0</th>
					<th>10.10.10.10</th>
					<th>TestName</th>
					<th>14525...</th>
					<th>TestName</th>
					<th>20/10/2015</th>
					<th>Date = 20/10/2015</th>
				</tr>
				<tr style="color: #98AFC7;">
					<th>1</th>
					<th>20/10/2015</th>
					<th>12:12:59</th>
					<th>Test</th>
					<th>classTest</th>
					<th>Test</th>
					<th>192.155.125.0</th>
					<th>10.10.10.10</th>
					<th>TestName</th>
					<th>14525...</th>
					<th>TestName</th>
					<th>20/10/2015</th>
					<th>Date = 20/10/2015</th>
				</tr>
				<tr style="color: #98AFC7;">
					<th>1</th>
					<th>20/10/2015</th>
					<th>12:12:59</th>
					<th>Test</th>
					<th>classTest</th>
					<th>Test</th>
					<th>192.155.125.0</th>
					<th>10.10.10.10</th>
					<th>TestName</th>
					<th>14525...</th>
					<th>TestName</th>
					<th>20/10/2015</th>
					<th>Date = 20/10/2015</th>
				</tr>
				<tr style="color: #98AFC7;">
					<th>1</th>
					<th>20/10/2015</th>
					<th>12:12:59</th>
					<th>Test</th>
					<th>classTest</th>
					<th>Test</th>
					<th>192.155.125.0</th>
					<th>10.10.10.10</th>
					<th>TestName</th>
					<th>14525...</th>
					<th>TestName</th>
					<th>20/10/2015</th>
					<th>Date = 20/10/2015</th>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
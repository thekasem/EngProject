<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Activity Archive List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body style="background: #FEFCFF">
	<s:url action="activityArchive_search" var="searchactivity"></s:url>
	<s:url action="activityArchive_list" var="listac"></s:url>
	<s:url action="activityArchive_add" var="addactivity"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="container">
			<s:a type="button" class="btn btn-info" href="%{searchactivity}">
				<span class="fa fa-search"></span>
					Search</s:a>
			<s:a type="button" class="btn btn-info" href="%{listac}">
				<span class="fa fa-refresh"></span> Refresh</s:a>
			<s:a type="button" class="btn btn-info" href="%{addactivity}">
				<span class="fa fa-plus-circle"></span> ADD Archive</s:a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default"><span class="fa fa-list">
						List</span></span>
			</h3>
		</div>
		<div style="margin-top: 10px;" align="right">
			<!-- 		<div class="table table-responsive"> -->
			<table class="table table-striped table-hover">
				<thead style="color: #4863A0; border-top: solid 2px #CCC">
					<th>Activity Log ID</th>
					<th>Date</th>
					<th>Action Class</th>
					<th>Action Name</th>
					<th>ScreenName</th>
					<th>Client IP</th>
					<th>Browser</th>
					<th>User Archive</th>
					<th>Date Archive</th>
					<th>Condition Archive</th>
				</thead>
				<tbody>
					<s:iterator value="list">
						<tr style="color: #98AFC7;">
							<td><s:property value="logId" /></td>
							<td><s:property value="logDate" /></td>
							<td><s:property value="actionClass" /></td>
							<td><s:property value="action" /></td>
							<td><s:property value="screenname" /></td>
							<td><s:property value="clientIP" /></td>
							<td><s:property value="browser" /></td>
							<td><s:property value="userArchive" /></td>
							<td><s:property value="dateArchive" /></td>
							<td><s:property value="conditionArchive" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>

		</div>
</body>
</html>
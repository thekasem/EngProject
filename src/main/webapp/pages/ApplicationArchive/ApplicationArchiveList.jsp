<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	<s:url action="applicationArchive_search" var="searchappl"></s:url>
	<s:url action="applicationArchive_list" var="listapp"></s:url>
	<s:url action="applicationArchive_add" var="addapp"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="container">
			<s:a type="button" class="btn btn-primary" href="%{searchappl}">
				<span class="fa fa-search"></span> Search</s:a>
			<s:a type="button" class="btn btn-primary" href="%{listapp}">
				<span class="fa fa-refresh"></span> Refresh</s:a>
			<s:a type="button" class="btn btn-primary" href="%{addapp}">
				<span class="fa fa-plus-circle"></span> ADD Archive</s:a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default"><span class="fa fa-list">
						List</span></span>
			</h3>
		</div>

		<div class="panel panel-default" style="margin-top: 15px;">
			<div class="panel-heading">
				<Strong>List Application Archive Log</Strong>
			</div>
			<div class="panel-body">
				<form class="form-horizontal">
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
							<th>User Archive</th>
							<th>Date Archive</th>
							<th>Condition Archive</th>
						</thead>
						<tbody>
							<s:iterator value="list">
								<tr style="color: #98AFC7;">
									<td><s:property value="eventId" /></td>
									<td><s:property value="logDate" /></td>
									<td><s:property value="logTime" /></td>
									<td><s:property value="level" /></td>
									<td><s:property value="entityClass" /></td>
									<td><s:property value="mode" /></td>
									<td><s:property value="clientIP" /></td>
									<td><s:property value="frontServerIP" /></td>
									<td><s:property value="memberId" /></td>
									<td><s:property value="userArchive" /></td>
									<td><s:property value="dateArchive" /></td>
									<td><s:property value="coditionArchive" /></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</form>
			</div>
			<s:include value="/pages/Menu/paging.jsp"></s:include>
		</div>
</body>
</html>
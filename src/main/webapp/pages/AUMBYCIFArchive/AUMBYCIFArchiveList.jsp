<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AUM BY CIF Archive Log List</title>
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
	<s:url action="aumByCIFArchive_search" var="searchaumcif"></s:url>
	<s:url action="aumByCIFArchive_list" var="listaumcif"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="container">
			<s:a type="button" class="btn btn-info" href="%{searchaumcif}">
				<span class="fa fa-search"></span> Search</s:a>
			<s:a type="button" class="btn btn-info" href="%{listaumcif}">
				<span class="fa fa-refresh"></span> Refresh</s:a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default"><span class="fa fa-list">
						List</span></span>
			</h3>
		</div>

		<div class="panel panel-default" style="margin-top: 15px;">
			<div class="panel-heading">
				<Strong>List AUM BY CIF Archive Log</Strong>
			</div>
			<div class="panel-body">
				<form class="form-horizontal">
					<table class="table table-striped table-hover ">
						<thead style="color: #4863A0;">
							<th>AUM CIF ID</th>
							<th>CustomerName</th>
							<th>AUM Date</th>
							<th>Market Value</th>
							<th>Remark</th>
							<th>Create Date</th>
							<th>Update Date</th>
							<th>User Archive</th>
							<th>Date Archive</th>
							<th>Condition Archive</th>
						</thead>
						<tbody>
							<tr style="color: #98AFC7;">
								<th>1</th>
								<th>Mr.Test Test</th>
								<th>08/06/2015</th>
								<th>145214.2</th>
								<th></th>
								<th>25/06/2015</th>
								<th></th>
								<th>TestName</th>
								<th>20/10/2015</th>
								<th>Date = 20/10/2015</th>
							</tr>
							<tr style="color: #98AFC7;">
								<th>1</th>
								<th>Mr.Test Test</th>
								<th>08/06/2015</th>
								<th>145214.2</th>
								<th></th>
								<th>25/06/2015</th>
								<th></th>
								<th>TestName</th>
								<th>20/10/2015</th>
								<th>Date = 20/10/2015</th>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
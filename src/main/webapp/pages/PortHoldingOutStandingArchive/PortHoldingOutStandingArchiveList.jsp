<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>PortHolding OutStanding Archive Log List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body style="background: #E5E4E2">
	<s:url action="portHoldingBySubAccountArchive_search"
		var="searchaumport"></s:url>
	<s:url action="portHoldingBySubAccountArchive_list" var="listaumport"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="container">
			<s:a type="button" class="btn btn-primary" href="%{searchaumport}">
				<span class="fa fa-search"></span> Search</s:a>
			<s:a type="button" class="btn btn-primary" href="%{listaumport}">
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
				<Strong>List PortHolding OutStanding Archive Log</Strong>
			</div>
			<div class="panel-body">
				<form class="form-horizontal">
					<table class="table table-striped table-hover">
						<thead style="color: #4863A0;">
							<th>Port Holding ID</th>
							<th>SubaccountNo</th>
							<th>AccountName</th>
							<th>BranchCode</th>
							<th>CurrencyCode</th>
							<th>CustomerName</th>
							<th>AUM Date</th>
							<th>Market Value</th>
							<th>User Archive</th>
							<th>Date Archive</th>
							<th>Condition Archive</th>
						</thead>
						<tbody>
							<s:iterator value="list">
								<tr style="color: #98AFC7;">
									<td><s:property value="portHoldingId" /></td>
									<td><s:property value="subAccountId" /></td>
									<td><s:property value="accountName" /></td>
									<td><s:property value="branchCode" /></td>
									<td><s:property value="currencyCode" /></td>
									<td><s:property value="customerNameEn" /></td>
									<td><s:property value="aumDate" /></td>
									<td><s:property value="marketValue" /></td>
									<td><s:property value="userArchive" /></td>
									<td><s:property value="dateArchive" /></td>
									<td><s:property value="conditionArchive" /></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</form>
			</div>
			<s:include value="/pages/Menu/paging.jsp"></s:include>
		</div>
	</div>
</body>
</html>
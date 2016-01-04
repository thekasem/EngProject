<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.theme.min.css" rel="stylesheet">
<link href="<s:url value="/css/tutorial.css"/>" rel="stylesheet"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Success Login</title>
</head>
<body style="background: #FEFCFF">
	<s:url action="activityArchive_search" var="search"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<table class="table table-striped table-hover " >
			<thead style="color: #4863A0;">
				<td>User</td>
				<td>password</td>
				<td>UserId</td>
				<td>firstName</td>
				<td>LastName</td>
				<td>gender</td>
				<td>City</td>
			</thead>
			<s:iterator value="list">
				<tr style="color: #98AFC7;">
					<td><s:property value="logId" /></td>
					<td><s:property value="logDate" /></td>
					<td><s:property value="level" /></td>
					<%-- <td><s:property value="firstName" /></td>
				<td><s:property value="lastName" /></td>
				<td><s:property value="gender" /></td>
				<td><s:property value="city" /></td> --%>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>
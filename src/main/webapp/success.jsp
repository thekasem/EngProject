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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Success Login</title>
</head>
<body style="background: #FEFCFF">
	
		<strong>hi <span class="fa fa-user"/> <s:property value="userNameLogin" /> you login success</strong>
	<form action="login_logout" method="post" class="form-horizontal">
	<button type="submit" class="btn btn-success btn-submit">
											<span class="fa fa-sign-out"></span> Logout</button>
	
	</form>
		
		
	
	<div class="container">
		<table class="table table-striped table-hover ">
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
				<br>
			</s:iterator>
		</table>
	</div>
</body>
</html>
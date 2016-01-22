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
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<script src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<title>Success Login</title>
</head>
<body style="background: #E5E4E2">
	<s:url action="activityArchive_search" var="search"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<%-- <table class="table table-striped table-hover " >
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
					<td><s:property value="firstName" /></td>
				<td><s:property value="lastName" /></td>
				<td><s:property value="gender" /></td>
				<td><s:property value="city" /></td>
				</tr>
			</s:iterator>
		</table> --%>

		<div class="panel panel-default" style="margin-top: 15px;">
			<div class="panel-heading" style="color: #686868">
				<h5>
					<span class="fa fa-child"></span> 
					<Strong>Hello</Strong> 
					<Strong><s:property value="userNameLogin" /></Strong>
				</h5>
			</div>
			<div class="panel-body">
				<form class="form-horizontal">
					<h5>
						<span class="fa fa-archive"></span> <strong>Data
							archiving</strong> is the process of moving data that is no longer
						actively used to a separate storage device for long-term
						retention. Archive data consists of older data that is still
						important to the organization and may be needed for future
						reference, as well as data that must be retained for regulatory
						compliance. Data archives are indexed and have search capabilities
						so files and parts of files can be easily located and retrieved.
					</h5>
					<img class="img-rounded" alt="Cinque Terre"
						src="pages/Menu/pig1.jpg" class="img-thumbnail " />
					<h5>
						<span class="fa fa-dashboard"></span> <strong>Dashboards</strong>
						often provide at-a-glance views of KPIs (key performance
						indicators) relevant to a particular objective or business process
						(e.g. sales, marketing, human resources, or production) The term
						dashboard originates from the automobile dashboard where drivers
						monitor the major functions at a glance via the instrument
						cluster. Dashboards give signs about a business letting the user
						know something is wrong or something is right. The corporate world
						has tried for years to come up with a solution that would tell
						them if their business needed maintenance or if the temperature of
						their business was running above normal. Dashboards typically are
						limited to show summaries, key trends, comparisons, and
						exceptions.
					</h5>
					<img class="img-rounded" alt="Cinque Terre" width="600"
						height="400" src="pages/Menu/pig2.png" class="img-thumbnail " />

				</form>
			</div>
		</div>
	</div>
</body>
</html>
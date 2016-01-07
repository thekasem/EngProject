<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Activity Archive Search</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.min.css">
<script src="calendar/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.structure.min.css">
<link rel="stylesheet"
	href="calendar/jquery-ui-1.11.4.custom/jquery-ui.theme.min.css">
<script type="text/javascript">
	function clickOk() {
		document.getElementById("ok").click();
	}

	$('.datepicker').datepicker({
		changeYear : true,
		yearRange : '-100:+100',
		dateFormat : 'YYYY-MM-DD'
	});
</script>
</head>
<body style="background: #FEFCFF">
	<s:url action="activityArchive_search" var="searchactivity"></s:url>
	<s:url action="activityArchive_list" var="listac"></s:url>
	<s:url action="activityArchive_add" var="addactivity"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="container">
			<s:a type="button" class="btn btn-info" href="%{searchactivity}">
				<span class="fa fa-refresh"></span> Reset </s:a>
			<a type="button" onclick="clickOk()" class="btn btn-info"><span
				class="fa fa-search"></span> OK</a>
			<s:a type="button" class="btn btn-info" href="%{listac}">
				<span class="fa fa-times-circle"></span> Cancel</s:a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default"><span class="fa fa-search">
				</span>Search 
			</h3>
		</div>

		<div class="panel panel-default" style="margin-top: 15px;">
			<div class="panel-heading">
				<Strong>Search Archive Activity Log</Strong>
			</div>
			<div class="panel-body">
				<form action="activityArchive_searchArchive" method="post"
					class="form-horizontal">
					<div class="form-group">
						<label class="col-md-2 control-label">Date</label>
						<div class="col-md-3">
							<s:textfield name="logDate" cssClass="datepicker form-control"></s:textfield>
						</div>
						<label class="col-md-2 control-label">Request URI</label>
						<div class="col-md-3">
							<s:textfield name="actionClass" cssClass="text form-control"></s:textfield>
						</div>
					</div>


					<div class="form-group">
						<label class="col-md-2 control-label">Action Name</label>
						<div class="col-md-3">
							<s:select class="form-control" headerKey="-1" value="" list="#{'':'','LIST':'LIST', 'SEARCH':'SEARCH', 'ADD':'ADD', 'EDIT':'EDIT'}"
								name="action"  />
						</div>
						<label class="col-md-2 control-label">Client IP</label>
						<div class="col-md-3">
							<s:textfield name="clientIP" cssClass="form-control"></s:textfield>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">Date Archive</label>
						<div class="col-md-3">
							<s:textfield name="dateArchive"
								cssClass="datepicker form-control"></s:textfield>
						</div>
						<label class="col-md-2 control-label">User Archive</label>
						<div class="col-md-3">
							<s:textfield name="userArchive" cssClass="form-control"></s:textfield>
						</div>
					</div>
					<input type="submit" id="ok" style="display: none">
				</form>
			</div>
		</div>
	</div>
	<style>
select.ui-datepicker-year {
	color: #000;
}
</style>
</body>
</html>
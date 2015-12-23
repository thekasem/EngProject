<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Activity Archive Search</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="../../calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="../../calendar/jquery-ui-1.11.4.custom/jquery-ui.min.css">
<script src="../../calendar/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="../../calendar/jquery-ui-1.11.4.custom/jquery-ui.structure.min.css">
<link rel="stylesheet"
	href="../../calendar/jquery-ui-1.11.4.custom/jquery-ui.theme.min.css">

</head>
<body>
	<div class="container">
		<div class="container" style="margin-top: 50px;">
			<a type="button" class="btn btn-info" href="ActivityArchiveSearch.jsp">Reset</a>
			<a type="button" class="btn btn-info" href="ActivityArchiveList.jsp">OK</a> 
			<a type="button" class="btn btn-info" href="ActivityArchiveList.jsp">Cancel</a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default">Search</span>
			</h3>
		</div>

		<div class="panel panel-default" style="margin-top: 15px;">
			<div class="panel-heading">
				<Strong>Search Archive Activity Log</Strong>
			</div>
			<div class="panel-body">
				<form class="form-horizontal">
					<div class="form-group">
						<label class="col-md-2 control-label">Date</label>
						<div class="col-md-3">
							<s:textfield cssClass="datepicker form-control"></s:textfield>
						</div>
						<label class="col-md-2 control-label">Request URI</label>
						<div class="col-md-3">
							<s:textfield name="uri" cssClass="form-control"></s:textfield>
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="col-md-2 control-label">Action Name</label>
							<div class="col-md-3">
								<select id="actionname" class="form-control">
									<option></option>
									<option></option>
								</select>
							</div>
						<label class="col-md-2 control-label">Description</label>
						<div class="col-md-3">
							<s:textfield name="description" cssClass="form-control"></s:textfield>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">Date Archive</label>
						<div class="col-md-3">
							<s:textfield cssClass="datepicker form-control"></s:textfield>
						</div>
						<label class="col-md-2 control-label">Client IP</label>
						<div class="col-md-3">
							<s:textfield name="clientip" cssClass="form-control"></s:textfield>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">User Archive</label>
						<div class="col-md-3">
							<s:textfield name="userarchive" cssClass="form-control"></s:textfield>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		$('.datepicker').datepicker({
			changeYear : true,
			yearRange : '-100:+100',
			dateFormat : 'dd MM yy'
		});
	</script>
	<style>
select.ui-datepicker-year {
	color: #000;
}
</style>
</body>
</html>
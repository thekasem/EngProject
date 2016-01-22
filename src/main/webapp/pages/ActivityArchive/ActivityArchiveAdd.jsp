<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Activity Archive ADD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<script src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script type="text/javascript">
	function clickOK() {
		document.getElementById("ok").click();
	}
</script>
</head>
<body style="background: #E5E4E2">
	<s:url action="activityArchive_search" var="searchactivity"></s:url>
	<s:url action="activityArchive_list" var="listac"></s:url>
	<s:url action="activityArchive_add" var="addactivity"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="container">
			<s:a type="button" class="btn btn-primary" href="%{addactivity}">
				<span class="fa fa-refresh"></span> Reset</s:a>
			<a type="button" class="btn btn-primary" onclick="clickOK()"><span
				class="fa fa-plus-circle"></span> OK</a>
			<s:a type="button" class="btn btn-primary" href="%{listac}">
				<span class="fa fa-times"></span> Cancel</s:a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default"><span
					class="fa fa-plus-circle"> ADD</span></span>
			</h3>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">
				<strong>ADD Archive Activity Log</strong>
			</div>
			<div class="panel-body">
				<form action="activityArchive_addArchive" class="form-horizontal"
					method="post">
					<div class="form-group">
						<label class="col-md-3 control-label">Select Activity Date
							:</label>
						<div class="col-md-3">
							<div class="form-group has-feedback">

								<s:textfield name="date" cssClass="datepicker form-control"></s:textfield>
								<span class="fa fa-calendar form-control-feedback"></span>
							</div>
						</div>

						<label class="col-md-2 control-label">Select Condition :</label>
						<div class="col-sm-6 col-md-3">
						<div class="form-group has-feedback">
							<s:select class="form-control" headerKey="-1" value="="
								list="#{'=':'=','<':'<'}" name="condition" />
								<span class="fa fa-list form-control-feedback"></span>
							</div>
						</div>
					</div>
					<input type="submit" id="ok" style="display: none">
				</form>
			</div>

		</div>
	</div>
	<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
	<script>
		$('.datepicker').datepicker({
			format : 'yyyymmdd'
		});
	</script>
	<style>
select.ui-datepicker-year {
	color: #000;
}
</style>
</body>
</html>
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
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<script src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script type="text/javascript">
	function clickOk() {
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
			<s:a type="button" class="btn btn-primary" href="%{searchactivity}">
				<span class="fa fa-refresh"></span> Reset </s:a>
			<a type="button" onclick="clickOk()" class="btn btn-primary"><span
				class="fa fa-search"></span> OK</a>
			<s:a type="button" class="btn btn-primary" href="%{listac}">
				<span class="fa fa-times-circle"></span> Cancel</s:a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default"><span class="fa fa-search">
						Search</span></span>
			</h3>
		</div>

		<div class="box box-success">
			<div class="box-header with-border">
				<Strong>Search Archive Activity Log</Strong>
			</div>
			<div class="panel-body">
				<form action="activityArchive_searchArchive" method="post"
					class="form-horizontal">
					<div class="form-group">
						<label class="col-md-2 control-label">Date</label>
						<div class="col-md-3">
							<div class="form-group has-feedback">
								<s:textfield name="entity.logDate"
									cssClass="datepicker form-control"></s:textfield>
								<span class="fa fa-calendar form-control-feedback"></span>
							</div>
						</div>
						<label class="col-md-2 control-label">Request URI</label>
						<div class="col-md-3">
							<div class="form-group has-feedback">
								<s:textfield name="entity.actionClass"
									cssClass="text form-control"></s:textfield>
								<span class="fa fa-pencil form-control-feedback"></span>
							</div>
						</div>
					</div>


					<div class="form-group">
						<label class="col-md-2 control-label">Action Name</label>
						<div class="col-md-3">
							<div class="form-group has-feedback">
								<s:select class="form-control" headerKey="-1" value=""
									list="#{'':'','LIST':'LIST', 'SEARCH':'SEARCH', 'ADD':'ADD', 'EDIT':'EDIT'}"
									name="entity.action" />
								<span class="fa fa-list form-control-feedback"></span>
							</div>
						</div>
						<label class="col-md-2 control-label">Client IP</label>
						<div class="col-md-3">
							<div class="form-group has-feedback">
								<s:textfield name="clientIP" cssClass="form-control"></s:textfield>
								<span class="fa fa-pencil form-control-feedback"></span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">Date Archive</label>
						<div class="col-md-3">
							<div class="form-group has-feedback">
								<s:textfield name="entity.dateArchive"
									cssClass="datepicker form-control"></s:textfield>
								<span class="fa fa-calendar form-control-feedback"></span>
							</div>
						</div>
						<label class="col-md-2 control-label">User Archive</label>
						<div class="col-md-3">
							<div class="form-group has-feedback">
								<s:textfield name="entity.userArchive" cssClass="form-control"></s:textfield>
								<span class="fa fa-pencil form-control-feedback"></span>
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
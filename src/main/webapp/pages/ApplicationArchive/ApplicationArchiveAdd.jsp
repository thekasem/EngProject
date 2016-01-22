<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Application Archive ADD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
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
</script>
</head>
<body style="background: #E5E4E2">
	<s:url action="applicationArchive_search" var="searchappl"></s:url>
	<s:url action="applicationArchive_list" var="listapp"></s:url>
	<s:url action="applicationArchive_add" var="addapp"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="container">
		<div class="container">
			<s:a type="button" class="btn btn-primary" href="%{addapp}">
				<span class="fa fa-refresh"></span> Reset</s:a>
			<a type="button" class="btn btn-primary" onclick="clickOk()"><span
				class="fa fa-plus-circle"></span> OK</a>
			<s:a type="button" class="btn btn-primary" href="%{listapp}">
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
				<strong>ADD Archive Application Log</strong>
			</div>
			<div class="panel-body">
				<form action="applicationArchive_addArchive" class="form-horizontal" method="post">
					<div class="form-group">
						<label class="col-md-3 control-label">Select Application
							Date :</label>
						<div class="col-md-3">
							<s:textfield name="date" cssClass="datepicker form-control"></s:textfield>
						</div>

						<label class="col-md-2 control-label">Select Condition :</label>
						<div class="col-sm-6 col-md-3">
							<s:select class="form-control" headerKey="-1" value="="
								list="#{'=':'=','<':'<'}" name="condition" />
						</div>
					</div>
					<input type="submit" id="ok" style="display: none">
				</form>
			</div>

		</div>
	</div>
	<script>
		$('.datepicker').datepicker({
			changeYear : true,
			yearRange : '-100:+100',
			dateFormat : 'yymmdd'
		});
	</script>
	<style>
select.ui-datepicker-year {
	color: #000;
}
</style>

</body>
</html>
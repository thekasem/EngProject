<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>AUM BY CIF Archive Log Search</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<s:url action="aumByCIFArchive_search" var="searchaumcif"></s:url>
	<s:url action="aumByCIFArchive_list" var="listaumcif"></s:url>
	<s:include value="/pages/Menu/menu.jsp"></s:include>
	<div class="row">

		<div class="col-md-2">
			<s:include value="/pages/Menu/menuV.jsp"></s:include>
		</div>
		<div class="col-md-10">
			<div style="margin-top: 20px"></div>
			<div class="container">
				<div class="container">
					<s:a type="button" class="btn btn-primary" href="%{searchaumcif}">
						<span class="fa fa-refresh"></span>
				Reset</s:a>
					<a type="button" class="btn btn-primary" onclick="clickOk()"><span
						class="fa fa-search"></span> OK</a>
					<s:a type="button" class="btn btn-primary" href="%{listaumcif}">
						<span class="fa fa-times-circle"></span> Cancel</s:a>
				</div>

				<div style="margin-top: 10px;" align="right">
					<h3>
						<span class="label label-default"><span
							class="fa fa-search"> Search</span></span>
					</h3>
				</div>

				<div class="box box-success">
					<div class="box-header with-border">
						<Strong>Search AUM BY CIF Archive Log</Strong>
					</div>
					<div class="panel-body">
						<form action="aumByCIFArchive_searchArchive"
							class="form-horizontal" method="post">
							<div class="form-group">
								<label class="col-md-2 control-label">AUM Date</label>
								<div class="col-md-3">
									<div class="form-group has-feedback">
										<s:textfield name="entity.aumDate"
											cssClass="datepicker form-control"></s:textfield>
										<span class="fa fa-calendar form-control-feedback"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">User Archive</label>
								<div class="col-md-3">
									<div class="form-group has-feedback">
										<s:textfield name="entity.userArchive" cssClass="form-control"></s:textfield>
										<span class="fa fa-pencil form-control-feedback"></span>
									</div>
								</div>
								<label class="col-md-2 control-label">Date Archive</label>
								<div class="col-md-3">
									<div class="form-group has-feedback">
										<s:textfield name="entity.dateArchive"
											cssClass="datepicker form-control"></s:textfield>
										<span class="fa fa-calendar form-control-feedback"></span>
									</div>
								</div>
							</div>
							<input type="submit" id="ok" style="display: none">
						</form>
					</div>
				</div>
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
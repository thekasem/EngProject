<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Activity Archive Add</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="calendar/jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<script type="text/javascript">
	function clickOK() {
		document.getElementById("ok").click();
	}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<s:url action="activityArchive_search" var="searchactivity"></s:url>
	<s:url action="activityArchive_list" var="listac"></s:url>
	<s:url action="activityArchive_add" var="addactivity"></s:url>
	<div class="wrapper">
		<s:url action="activityArchive_search" var="search"></s:url>
		<s:include value="/pages/Menu/menuV.jsp"></s:include>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Home <small>Version 6.0</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
			</ol>
			</section>

			<section class="content">
			<div class="col-md-12">
				<div class="col-md-5">
					<s:a type="button" class="btn btn-primary" href="%{searchactivity}">
						<span class="fa fa-refresh"></span> Reset </s:a>
					<a type="button" onclick="clickOK()" class="btn btn-primary"><span
						class="fa fa-search"></span> OK</a>
					<s:a type="button" class="btn btn-primary" href="%{listac}">
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

			</section>
			<!-- Main content -->
		</div>
		<s:include value="/pages/Menu/footer.jsp"></s:include>
	</div>
	<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="plugins/fastclick/fastclick.min.js"></script>
	<script src="dist/js/app.min.js"></script>
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script src="plugins/chartjs/Chart.min.js"></script>
	<script src="dist/js/demo.js"></script>
	<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
	<script>
		$('.datepicker').datepicker({
			format : 'yyyymmdd'
		});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="container" style="margin-top: 10px;">
			<a type="button" class="btn btn-primary"
				href="ActivityArchiveSearch.jsp">Search</a> <a type="button"
				class="btn btn-primary">Refresh</a> <a type="button"
				class="btn btn-primary">ADD Archive</a>
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
								<s:textfield name="date" cssClass="form-control"></s:textfield>
							</div>
							<label class="col-md-2 control-label">Request URI</label>
							<div class="col-md-3">
								<s:textfield name="uri" cssClass="form-control"></s:textfield>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">Action Name</label>
							<div class="col-md-3">
								<s:textfield name="action" cssClass="form-control"></s:textfield>
							</div>
							<label class="col-md-2 control-label">Description</label>
							<div class="col-md-3">
								<s:textfield name="description" cssClass="form-control"></s:textfield>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">Date Acrive</label>
							<div class="col-md-3">
								<s:textfield name="dateacrive" cssClass="form-control"></s:textfield>
							</div>
							<label class="col-md-2 control-label">Client IP</label>
							<div class="col-md-3">
								<s:textfield name="clientip" cssClass="form-control"></s:textfield>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">User Acrive</label>
							<div class="col-md-3">
								<s:textfield name="useracrive" cssClass="form-control"></s:textfield>
							</div>
						</div>
					</form>
			</div>
		</div>



	</div>
</body>
</html>
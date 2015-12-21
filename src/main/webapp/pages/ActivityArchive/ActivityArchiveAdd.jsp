<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Activity Archive</title>
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
			<a type="button" class="btn btn-primary"
				href="ActivityArchiveAdd.jsp">Reset</a> <a type="button"
				class="btn btn-primary" href="ActivityArchiveList.jsp">Cancel</a> <a
				type="button" class="btn btn-primary" href="ActivityArchiveList.jsp">OK</a>
		</div>

		<div style="margin-top: 10px;" align="right">
			<h3>
				<span class="label label-default">ADD</span>
			</h3>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">Delete Archive Activity Log</div>
			<div class="panel-body">
				Select Activity Date :
				<!-- Load jQuery and bootstrap datepicker scripts -->

				<div class="col-md-3">
					<s:textfield cssClass="datepicker form-control"></s:textfield>
				</div>
				<div>
					<div class="btn-group">
						<a class="btn btn-default dropdown-toggle btn-select2"
							data-toggle="dropdown" href="#"><span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">=</a></li>
							<li><a href="#"><</a></li>
						</ul>
					</div>





				</div>
			</div>
		</div>
	</div>
	<script>
		$('.datepicker').datepicker({
			changeYear:true,
			yearRange:'-100:+100',
			dateFormat:'dd MM yy'
			
		});
	</script>
	<style>
	 select.ui-datepicker-year {
	color: #000;
}
	</style>

</body>
</html>
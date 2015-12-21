<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<title>Login System</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.theme.min.css" rel="stylesheet">
<script type="text/javascript">
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body style="background: #E5E4E2">
	<div style="margin-top: 150px">
		<form action="login" method="post" class="form-horizontal">
			<div class="container">
 				<s:if test="arlert.equals('Login Fail')">
					<div class="alert alert-danger col-md-4 col-md-offset-4" >
						<div class="center">
						<s:property value="arlert"/>
						</div>
					</div>
 				</s:if>
 				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-default">
							<div class="panel-heading" style="color: #686868">
								<strong><s:text name="user.login" /></strong>
							</div>
							<div class="panel-body">
								<div class="form-group">
									<label class="control-label col-md-3" style="color: #686868"><s:text
											name="user.name" /></label>
									<div class="col-md-9">
										<s:textfield name="user.name" cssClass="form-control"
											placeholder="username" type="password"></s:textfield>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-3" style="color: #686868"><s:text
											name="user.password" /></label>
									<div class="col-md-9">
										<s:password name="user.city" cssClass="text form-control"
											placeholder="password"></s:password>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<div class="checkbox">
											<label class=""> <input type="checkbox" class="">Remember
												me
											</label>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit" class="btn btn-success btn-submit">
											Submit</button>
										<a class="btn btn-default btn-reset" href="index.jsp">reset</a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>

</html>
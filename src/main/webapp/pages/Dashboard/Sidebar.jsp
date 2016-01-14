<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sidebar Copy</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/highcharts.js"></script>
<script src="js/highcharts-3d.js"></script>
<script src="js/highcharts-more.js"></script>
<script src="js/funnel.js"></script>
<script src="js/exporting.js"></script>
<script src="js/solid-gauge.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
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


<style type="text/css">
body {
  padding-top: 51px;  
}
.text-center {
  padding-top: 20px;
}
.col-xs-12 {
  background-color: #fff;
}
#sidebar {
  height: 100%;
  padding-right: 0;
  padding-top: 20px;
}
#sidebar .nav {
  width: 95%;
}
#sidebar li {
  border:0 #f2f2f2 solid;
  border-bottom-width:1px;
}

/* collapsed sidebar styles */
@media screen and (max-width: 767px) {
  .row-offcanvas {
    position: relative;
    -webkit-transition: all 0.25s ease-out;
    -moz-transition: all 0.25s ease-out;
    transition: all 0.25s ease-out;
  }
  .row-offcanvas-right
  .sidebar-offcanvas {
    right: -41.6%;
  }

  .row-offcanvas-left
  .sidebar-offcanvas {
    left: -41.6%;
  }
  .row-offcanvas-right.active {
    right: 41.6%;
  }
  .row-offcanvas-left.active {
    left: 41.6%;
  }
  .sidebar-offcanvas {
    position: absolute;
    top: 0;
    width: 41.6%;
  }
  #sidebar {
    padding-top:0;
  }
}
</style>


</head>
<body style="background: #FEFCFF">
<div class="page-container">
    <div class="container">
      <div class="row row-offcanvas row-offcanvas-left">
        
        <!-- sidebar -->
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
            <ul class="nav">
              <li class="active"><a href="#">Dashboard</a></li>
              <li><a href="Dashboard.jsp">Browsers</a></li>
              <li><a href="#">Login</a></li>
              <li><a href="#">User</a></li>
              <li><a href="#">Top Module</a></li>
              <li><a href="#">Percent New User</a></li>
              <li><a href="#">Customers</a></li>
              <li><a href="#">Top User</a></li>
              <li><a href="#">Average Time On Site</a></li>
              <li><a href="#">View AUM</a></li>
              <li><a href="#">Disk Usage</a></li>             
            </ul>
        </div>
  	
  	<div class="row" style="">
			<div class="col-md-4 col-sm-6">
				<div class="well">
					<form class="form">
						<h4>Browsers</h4>
						<div class="input-group text-center">
							<div class="col-md-4">
								<div id="browser"
									style="min-width: 310px; height: 300px; max-width: 600px;"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
			</div>
        <!-- main area -->
        <div class="col-xs-12 col-sm-9">
        </div><!-- /.col-xs-12 main -->
    </div><!--/.row-->
  </div><!--/.container-->
</div><!--/.page-container-->
<script>
$(document).ready(function() {
	  $('[data-toggle=offcanvas]').click(function() {
	    $('.row-offcanvas').toggleClass('active');
	  });
});
</script>




</body>
</html>
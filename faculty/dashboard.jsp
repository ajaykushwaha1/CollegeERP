<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/png" href="images/icon11.png"/>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Faculty Panel</title>
	
</head>

<body>

<%/*

    if(session.getAttribute("id")==null)
  {
	  session.setAttribute("warn","Login is Required"); 
	  response.sendRedirect("index.jsp");	  
  }*/

  
  %> 

	
<!-- Navbar Starts-->
	
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="dashboard.jsp">College ERP</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="dashboard.jsp">Dashboard</a></li>      
	</ul>
	<ul class = "nav navbar-nav navbar-right">
	<li class="dropdown"><a class="dropdown-toggle" data-toggle ="dropdown">Welcome <%=session.getAttribute("name")%><span class="caret"></span></a>
	<ul class="dropdown-menu">
          <li><a href="#">Profile</a></li>
		  <li><a href="logout">Logout</a></li> 
	</ul>	  
	</li>      
    </ul>
  </div>
</nav>
<!--Navbar ends-->

<!-- Panel header container starts -->
<div class="container">
	<div class="row">
        <div class="panel panel-primary">    
		  <div class="panel-heading">College ERP</div>
		  <div class="panel-body">Student Dashboard</div>
        </div>
	</div>
</div>	
<!--Panel header ends-->

<!--Panel body starts-->

<div class="container">    
		<div class="col-md-12">		
	       <div class="panel panel-primary">
	             <div class="panel-heading">Uploading Options</div>			    		 
	        <div class="panel-body">
			
	<!--Attendance section starts-->		
<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/Attendance.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="upload_attendance.jsp" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">UPDATE STUDENTS ATTENDANCE</a>
	</div>
 </center>
</div>
<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/Attendance.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="retrieve_attendance.jsp" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">RETRIEVE STUDENTS ATTENDANCE</a>
	</div>
 </center>
</div>
<!--attendance section ends-->

<!--upload Assignment section starts-->

<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/Assignment.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="uploadassignment.jsp" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">UPLOAD ASSIGNMENT</a>
	</div>
 </center>
</div>
<!--upload Assignment section ends-->

<!--Upload note starts -->
<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/notes12.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="upload_notes.jsp" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">UPLOAD NOTES</a>
	</div>
 </center>
</div>
<!--upload notes section ends-->

<!--Upload subject details -->
<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/notes12.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="#" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">SUBJECT PROGRESS DETAIL</a>
	</div>
 </center>
</div>
<!-- ends subject details -->

<!-- Notice -->
<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/notes12.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="#" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">NOTICE</a>
	</div>
 </center>
</div>
<!-- end notice -->

</div>
</div>
</div>
</div>	
<!--Panel bode ends-->	
</body>
</html>
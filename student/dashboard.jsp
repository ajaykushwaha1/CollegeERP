 <!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/png" href="images/icon11.png"/>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Login</title>
</head>
<body> 
<%
if(session.getAttribute("id")==null)
  {
	  session.setAttribute("warn","Login is Required");
	  response.sendRedirect("index.jsp");
  }  
%>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">College ERP</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Dashboard</a></li>      
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
<div class="container">
	<div class="row">
        <div class="panel panel-primary">    
		  <div class="panel-heading">College ERP</div>
		  <div class="panel-body">Studend Dashboard</div>
        </div>
	</div>
</div>	

<div class="container">    
		<div class="col-md-12">		
	       <div class="panel panel-primary">
	             <div class="panel-heading">Student Options</div>			    		 
	        <div class="panel-body">
<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/Assignment.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="#"  class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">SUBMIT ASSIGNMENT</a>
	</div>
 </center>
</div>
<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/Attendance12.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="attendance.jsp" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">KNOW YOUR ATTENDANCE</a>
	</div>
 </center>
</div>

<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/notes12.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="#" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">GET NOTES</a>
	</div>
 </center>
</div>

<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/fee.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="#" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">ACCOUNTS / FEE</a>
	</div>
 </center>
</div>

<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/admitcard.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="#" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">ADMIT CARD</a>
	</div>
 </center>
</div>

<div class="col-md-4">
 <center>
	<div class="row">
		<img src="images/registration.jpg" width="150" class="img-responsive">
	</div>
	<div class="row">
		<a href="#" class="btn btn-primary btn-sm btn-raised btn-block" style="width:250px">REGISTRATION</a>
	</div>
 </center>
</div>

</div>
</div>
</div>
</div>
</body>
</html>
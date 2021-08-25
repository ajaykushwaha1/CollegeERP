<!DOCTYPE html>
<html lang="en">
<head>
  <title>College ERP</title>
   <link rel="shortcut icon" type="image/png" href="images/icon11.png"/>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
</head>
<body>


<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">College ERP</a>
    </div>
	
    <ul class="nav navbar-nav">
      <li><a href="#">Home</a></li>
      <li class="active"><a href="#"> Student Login</a></li>
      <li><a href="#"> Faculty Login</a></li>
      <li><a href="#"> Admin Login</a></li>
    </ul>
  </div>
</nav>


<div class="container">
	   <div class="row">

  <div class="panel panel-primary">
    
		  <div class="panel-heading">College ERP Login</div>
		  <div class="panel-body">Powered By <a href="#">Krishna Institute of Technology Kanpur.</a></div>
     </div>
	 </div>
</div>	
 <div class="container">    
		<div class="col-sm-6">		
	       <div class="panel panel-primary">
	         <div class="panel-heading">Login Form</div>
				<div class="panel-body">
						<form role="form" action="login" method="post">
						<div class="form-group">
						<label for="rn">Roll Number:</label>
						 <input type="number" class="form-control" name="id" id="rn" placeholder="Enter Roll Number" required>
						</div>
						<div class="form-group">
						<label for="pwd">Password:</label>
						<input type="password" class="form-control" name="pass" id="pwd" placeholder="Enter password" required>
						</div>
						
						<button type="submit" class="btn btn-default">Submit</button>
						</form>
				 </div>			 
	        </div>
		</div>
           <div class="col-sm-6">		
					<div class="panel panel-primary"> 
						<div class="panel-heading">SignUp Form</div>
						 <div class="panel-body">
						 <% 
						 try
						 {
						%>	 
							 <h3 style="text-align:center; color:red;"> <%=session.getAttribute("success")%> </h3>
						<%
							session.removeAttribute("success");
						 }
						 catch(Exception e)
						 {
							 out.println(e);
						 }
							
						 %>
						 
							 <form role="form" method="post" action="signup">
							   <div class="form-group">
							   <label for="name">Name:</label>
								 <input type="text" class="form-control" name="name" id="name" placeholder="Enter Name" required>
								</div>
								
								<div class="form-group">
								<label for="rn">Roll Number:</label>
								 <input type="number" class="form-control" name="id" id="rn" placeholder="Enter roll number" required>										
								</div>
								<div class="form-group">
									  <label for="sel1">Department:</label>
									  <select class="form-control" id="sel1" name="dept">
									  <option value="">Select</option>
									  <option value="CSE">CSE</option>
									  <option value="ME">ME</option>
									  <option value="CE">CE</option>
									  <option value="EC">EC</option>
									</select>
								  </div>
								
								<div class="form-group">
								<label for="email">Email:</label>
								 <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" required>					
								</div>
															
								<div class="form-group">
								<label for="pwd">Password:</label>
								<input type="password" class="form-control" name="pass" id="pwd" placeholder="Enter password" required>
								</div>	
								                              							
								<button type="submit" class="btn btn-default" >Submit</button>
							 </form>
						 </div>
					</div>
			
	        </div> 
</div>
<div class="container">
	   <div class="row">

  <div class="panel panel-primary">
     
		  <div class="panel-heading"></div>
		  <div class="panel-body">
		  <p>All rights reserve to Krishna Institute of Technology Kanpur.</p> 
		</div>
     </div>
	 </div>
</div>
</body>
</html>

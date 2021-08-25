<%@ page session="false"%>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>College ERP</title>
   <link rel="shortcut icon" type="image/png" href="images/icon11.png"/>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 </head>

 <body>
<br><br><br><br>

<!-- Admin login form container -->

	<div class="container">  
		<div class="col-sm-3"></div>
		<div class="col-sm-6">		
	       <div class="panel panel-primary">
	         <div class="panel-heading">Admin Login Form</div>
			    
				 <div class="panel-body">
						
	  <form role="form" action="admin" method="post"> <!-- action goes to admin  -->
	  <div class="form-group">
						<label for="User Name">Username:</label>
						 <input type="text" class="form-control" name="name" id="User Name" placeholder="Enter username" required>
						 
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
	</div>	
<!--End login form -->
	
	</body>
</html>
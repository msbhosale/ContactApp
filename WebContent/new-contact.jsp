<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New contact</title>
<link rel="stylesheet" href="https://bootswatch.com/4/spacelab/bootstrap.min.css">
</head>
<body>

	<div class="container ">
		
		<div class="col-lg-6">
			<br>
			<h1> New contact </h1>
			
			<form action="SaveContact" method="post">		
				<div class="form-group">
	      			<label for="id">Id</label>
	      			<input type="text" class="form-control" id="id">
	    		</div>
	    		<div class="form-group">
	      			<label for="firstname">First name</label>
	      			<input type="text" class="form-control" id="firstname" name="firstname">
	    		</div>
	    		<div class="form-group">
	      			<label for="lastname">Last name</label>
	      			<input type="text" class="form-control" id="lastname" name="lastname">
	    		</div>
	    		<div class="form-group">
	      			<label for="number">Number</label>
	      			<input type="text" class="form-control" id="number" name="number">
	    		</div>
	    		<div class="form-group">
	      			<label for="email">Email Id</label>
	      			<input type="text" class="form-control" id="email" name="email">
	    		</div>
	    		<div align="center">	    			
	    			<input type="reset" class="btn btn-outline-primary" value="Reset">
	    			<input type="submit" class="btn btn-success" value="Save">	    			
	    		</div>	    			
			</form>
		
		</div>
	
	</div>

</body>
</html>
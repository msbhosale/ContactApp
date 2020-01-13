<%@page import="com.msbhosale.bean.Contact"%>
<%@page import="com.msbhosale.service.ContactService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit contact</title>
<link rel="stylesheet" href="https://bootswatch.com/4/spacelab/bootstrap.min.css">
</head>
<%

	String _id = request.getParameter("id");

	int id = Integer.parseInt(_id);
	
	ContactService cs = new ContactService();
	
	Contact contact = cs.getById(id);

%>
<body>

	<div class="container ">
		
		<div class="col-lg-6">
			<br>
			<h1> Edit contact </h1>
			
			<form action="UpdateContact" method="post">		
				<div class="form-group">
	      			<label for="id">Id</label>
	      			<input type="text" class="form-control" id="id" readonly="readonly" value="<%= id %>">
	    		</div>
	    		<div class="form-group">
	      			<label for="firstname">First name</label>
	      			<input type="text" class="form-control" id="firstname" name="firstname" value="<%= contact.getFirstName() %>">
	    		</div>
	    		<div class="form-group">
	      			<label for="lastname">Last name</label>
	      			<input type="text" class="form-control" id="lastname" name="lastname" value="<%= contact.getLastName() %>">
	    		</div>
	    		<div class="form-group">
	      			<label for="number">Number</label>
	      			<input type="text" class="form-control" id="number" name="number" value="<%= contact.getNumber() %>">
	    		</div>
	    		<div class="form-group">
	      			<label for="email">Email Id</label>
	      			<input type="text" class="form-control" id="email" name="email" value="<%= contact.getEmailId() %>">
	    		</div>
	    		<div align="center">	    			
	    			<input type="submit" class="btn btn-info" value="Update">	    			
	    		</div>	    			
			</form>
		
		</div>
	
	</div>

</body>
</html>
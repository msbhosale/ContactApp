<%@page import="com.msbhosale.service.ContactService"%>
<%@page import="com.msbhosale.bean.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Contacts</title>
<link rel="stylesheet" href="https://bootswatch.com/4/spacelab/bootstrap.min.css">
</head>
<body>

<%

	ContactService cs = new ContactService();

	List<Contact> contactList = cs.getAll();

%>

	<div class="container">
		<br><br>
		<div class="">
			<h1 align="center" > My Contact App </h1>
			<div class="pull-right">
				<a href="new-contact.jsp"> <button class="btn btn-info">  Add new contact </button> </a>
			</div>
		</div>
		<br><br>
		<table class="table table-bordered">		
			<thead>
				<tr>
					<th>Id</th>
					<th>First name</th>
					<th>Last name</th>
					<th>Number</th>
					<th>Email Id</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<%
			
			for(Contact theContact : contactList){
				
				out.print("<tr>");
				out.print("<td>"+theContact.getId()+"</td>");
				out.print("<td>"+theContact.getFirstName()+"</td>");
				out.print("<td>"+theContact.getLastName()+"</td>");
				out.print("<td>"+theContact.getNumber()+"</td>");
				out.print("<td>"+theContact.getEmailId()+"</td>");
				
				String editURL = "edit-contact.jsp?id="+theContact.getId();				
				out.print("<td> <a href='"+editURL+"'> <button class='btn btn-primary'> Edit </button> </a> </td>");
				
				String deleteURL = "DeleteContact?id="+theContact.getId();				
				out.print("<td> <a href='"+deleteURL+"'> <button class='btn btn-danger'> Delete </button> </a> </td>");
				
				out.print("<tr>");
			}
			
			%>
		
		</table>
			
	</div>

</body>
</html>
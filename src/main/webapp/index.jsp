<%@page import="java.util.List"%>
<%@page import="com.muhib.sd2.vaccineRegistration.bean.Entity"%>
<%@page import="com.muhib.sd2.vaccineRegistration.dao.RegDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.muhib.sd2.vaccineRegistration.dao.Connectivity" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css.jsp" %>
</head>
<body class="bg-dark">
		
	<%@include file="navbar.jsp" %>
	
	<div class="container p-5" >
		<div class="card">
			<div class="card-body">
		<p class="fs-1 text-center">All Registered Users</p>

		<table class="table">
  <thead>
    <tr>
      <th scope="col">NID</th>
      <th scope="col">Full Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Date Of Birth</th>
      <th scope="col">Contact Number</th>
      <th scope="col">Address</th>
      <th scope="col">Center</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  		<%
  			
  		RegDAO dao = new RegDAO(Connectivity.create());
  		List<Entity> list = dao.showingFullList();
  		for(Entity e: list){
  		%>
  	<tr>
      <th scope="row"><%=e.getNid() %></th>
      <td><%=e.getName() %></td>
      <td><%=e.getGender() %></td>
      <td><%=e.getDob() %></td>
      <td><%=e.getContact() %></td>
      <td><%=e.getAddress() %></td>
      <td><%=e.getCenter() %></td>
      <td><a href="edit.jsp" class="btn btn-sm btn-primary">Edit</a>
      <a href="delete.jsp" class="btn btn-sm btn-danger ms-1">Delete</a>
      </td>
    </tr>
    
    <%} %>
  
  </tbody>
</table>

	</div>
	</div>
	</div>

</body>
</html>
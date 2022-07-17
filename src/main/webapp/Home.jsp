
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>

<div align="center">
<h1>Home Page</h1>
<h2>
	<br>Welcome to Vaccine Registration <br>
	<h1><%= request.getAttribute("name") %></h1><br>
	<br>Personal Information You've Entered<br>
	
</h2>
<h3>
	
<label><b>NID Number:	</b></label><%= request.getAttribute("nid") %><br><br>
<label><b>Gender:	</b></label><%= request.getAttribute("gender") %><br><br>
<label><b>Date of Birth:	</b></label><%= request.getAttribute("dob") %><br><br>
<label><b>Contact Number:	</b></label><%= request.getAttribute("contact") %><br><br>
<label><b>Home District:	</b></label><%= request.getAttribute("address") %><br><br>
<label><b>Vaccination Center:	</b></label><%= request.getAttribute("center") %><br><br>
       
</h3>

<input type="button" onClick="location.href='index.jsp'"
value='Log Out'>

</div>

</body>
</html>
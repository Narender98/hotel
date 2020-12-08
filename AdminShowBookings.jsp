<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Bookings</title>

<link href="${pageContext.request.contextPath}/css/AdminShowBookings.css" rel="stylesheet">


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
	%>
	
	<% if(session.getAttribute("AdminEmail")==null) {  %>
	
	<% response.sendRedirect("AdminLogin.jsp"); } else { %>
	
	<nav class="navbar navbar-expand-lg fixed-top">		
	
		<div class="logo">
			<a href="">Hotel <span class="fa fa-2x fa-bed"></span> Heaven</a>
		</div>

		<form id="logout" action="AdminLogoutSession">
			<input type="submit" class="logout" value="Logout">
		</form>
	</nav>

	<div class="box col-lg-12 col-md-12 col-sm-12 col-12 d-block m-auto">
			
	<h1>All Bookings</h1>
	
	<table>
		<tr>
		  <th>Name</th>
		  <th>Mobile</th>
		  <th>Address</th>
		  <th>Room Type</th>
		  <th>Price</th>
		  <th>Rooms</th>
		  <th>Adults</th>
		  <th>Childrens</th>
		  <th>Checkin</th>
		  <th>Checkout</th>
		  <th>Pet</th>
		  <th>PickUp</th>
		  <th>BookingId</th>
		  <th>Acount Email</th>	  
	    </tr>
	
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/website", "root", "123456");
			
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from bookings");
			
			while(rs.next())
			{
				String  s1 = rs.getString(1) ,
						s2 = rs.getString(2) ,
						s3 = rs.getString(3) ,
						s4 = rs.getString(4) ,
						s5 = rs.getString(5) ,
						s6 = rs.getString(6) ,
						s7 = rs.getString(7) ,											
						s8 = rs.getString(8) ,
						s9 = rs.getString(9) ,
						s10 = rs.getString(10) ,
						s11 = rs.getString(11) ,
						s12 = rs.getString(12) ,
						s13 = rs.getString(13) ,
						s14 = rs.getString(14);
										
				%> 
					  <tr>
					    <td><%= s1 %></td>
					    <td><%= s2 %></td>
					    <td><%= s3 %></td>
					    <td><%= s4 %></td>
					    <td><%= s5 %></td>
					    <td><%= s6 %></td>
					    <td><%= s7 %></td>
					    <td><%= s8 %></td>
					    <td><%= s9 %></td>
					    <td><%= s10 %></td>
					    <td><%= s11 %></td>
					    <td><%= s12 %></td>
					    <td><%= s13 %></td>
					    <td><%= s14 %></td>
					  </tr>
				 <%
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	%>
	</table>
	
	<% } %>
	</div>
</body>
</html>
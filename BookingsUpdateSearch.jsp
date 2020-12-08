<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Bookings</title>

<link href="css/BookingsUpdateSearch.css" rel="stylesheet" type="text/css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googl
eapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
		
	<%@ include file="Navbar.jsp" %>
	
	<% if(session.getAttribute("Email")==null) { %>
	 
	<%  response.sendRedirect("Login.jsp"); } else { %> 
	
	<div class="box box col-lg-6 col-md-12 col-sm-12 col-12 d-block m-auto">
	
	<label class="field-label">Please Select Booking ID For Updation :</label><br>
				
	<%
	HttpSession session2 = request.getSession();
	String useremail = (String)session2.getAttribute("myEmail");
	String getemail = null, getname = null;
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/website" , "root" , "123456");
		
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("select *  from bookings");
		while(rs.next())
		{
			if(useremail.equals(rs.getString("AccountEmail")))
			{
				getemail = rs.getString("BookingId");
				getname = rs.getString("Name");
				
				%>
				<form action="BookingsUSearch" method="post">
				<input class="gui-input" type="submit" name="BookingsUSearch" value="<%=getemail%>">
				</form>
				<% 		
			}
		}
		
		System.out.println();

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	
	
	%>

	</div>		

	<% } %>

</body>
</html>
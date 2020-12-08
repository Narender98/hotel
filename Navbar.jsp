<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/css/Navbar.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
		<nav class="navbar navbar-expand-lg fixed-top">		
		
				<div class="logo">
					<a href="Homepage.jsp">Hotel <span class="fa fa-2x fa-bed"></span> Heaven</a>
				</div>
			
				<button class="navbar-toggler navbar-dark" type="button" data-toggle="collapse" data-target="#collapsenavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
	
				<div class="collapse navbar-collapse" id="collapsenavbar">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<a href="Rooms.jsp" class="nav-link">Rooms</a>
						</li>
						
						<!-- 				Reservation Prevent from Logout Users				 -->
						
						<li class="nav-item">
							
							<% if(session.getAttribute("Email")==null) { %>
								<a href="Login.jsp" class="nav-link">Book Here</a>
							<% } else { %>
								<a href="Booking.jsp" class="nav-link">Book Here</a>	
							<% } %>	
						</li>
					 	
				 		<li class="nav-item">
							<a href="Gallery.jsp" class="nav-link">Gallery</a>
						</li>
						<li class="nav-item">
							<a href="Contact.jsp" class="nav-link">Contact</a>
						</li>
						
						<li class="nav-item">
							<a href="AboutUs.jsp" class="nav-link">About Us</a>
						</li>
					</ul>	
						
						<!--			 			Prevent User Logout						 -->
					
						<%
							if(session.getAttribute("Email")==null)
							{
						%>
						
						<div class="nav-item dropdown">
						        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">
						  Account </a>
						  <div class="dropdown-position">  
						    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					          <a class="dropdown-item" href="Login.jsp">Sign In</a>
					          <a class="dropdown-item" href="Register.jsp">Sign Up</a>
						    </div>
						  </div>  
						</div>
						
						
						<% } else {%>
						 
						<form id="mylogout" action="LogoutSession">
							<div class="nav-item dropdown">
							        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">
							  ${Email} </a>
							  <div class="dropdown-position">
							    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						          <a class="dropdown-item" href="BookingsShowSearch.jsp">Your Bookings</a>
						          <a class="dropdown-item" href="BookingsUpdateSearch.jsp">Update Bookings</a>
								  <a class="dropdown-item" href="BookingsCancelSearch.jsp">Cancel Bookings</a>
								  <a class="dropdown-item" href="#" onclick="document.getElementById('mylogout').submit();">Logout</a>
							    </div>
							  </div> 
							</div>
						</form>	
						
						<% } %>
			</div>	
		</nav>
</body>
</html>
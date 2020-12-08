<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>

<link href="css/Homepage1.css" rel="stylesheet" type="text/css">

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
	
	<div class="bgimage">
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
		
		
		<div class="container text-center text-white headerset">
			<h1>Welcome To Hotel <span class="fa fa-2x fa-bed"></span> Heaven</h1>
		</div>  
	</div>  
	
		
	<!-- -----------------Rooms----------------->
	<section class="rooms bg-light text-center" id="rooms">
		<div class="container">
			<h1>ROOMS</h1>
			<p>Our Room Categories<p>
			
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/single.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Single</h2>
							<p class="card-text">Rs. 5000.00</p>
							<a href="Booking.jsp">Book Now</a>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/02.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Standard</h2>
							<p class="card-text">Rs. 7000.00</p>
							<a href="Booking.jsp">Book Now</a>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/06.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Deluxe</h2>
							<p class="card-text">Rs. 9000.00</p>
							<a href="Booking.jsp">Book Now</a>
						</div>
					</div>
				</div>
			</div>
			
			<!-------------2nd Row--------------->
			
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/join.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Join Room</h2>
							<p class="card-text">Rs. 12000.00</p>
							<a href="Booking.jsp">Book Now</a>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/20.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Suite</h2>
							<p class="card-text">Rs. 15000.00</p>
							<a href="Booking.jsp">Book Now</a>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/pres.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Presedential</h2>
							<p class="card-text">Rs. 18000.00</p>
							<a href="Booking.jsp">Book Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- -----------------Services-------------- -->
	
	<div class="col-lg-10 col-md-12 col-sm-12 col-12 d-block m-auto">
		<div class="boxGym1">
			<h1>Gym Facility</h1>
			<h2>With a mix of equipment and weights, our hotel gym will cater to you whether you want to do a cardio workout, or if you want to give your muscles some strength training or toning exercises.</h2>
		</div>
		
		<div class="boxGym2">
		</div>
		
		
		<div class="boxFood1">
			<h1>Food and Beverage Facility</h1>
			<h2>Our Hotel Food and Beverage Department (F&B) is responsible for maintaining high quality of food and service, food costing, managing restaurants, bars, etc. ...</h2>
		</div>
		
		<div class="boxFood2">
		</div>
	</div>
		
	<!-- -----------------Footer------------------->
	
	<div class="footer">
		<div class="copyright">
			<h6>Disclaimer : No outside food, alcoholic & non-alcoholic beverages are allowed in the hotel premises.</h6>
			<h6>Copyright © Hotel <span class="fa fa-2x fa-bed"></span> Heaven 2020, Designed By Narender Kumar</h6>
		</div>
	</div>
</body>
</html>
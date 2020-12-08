<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rooms</title>

<link href="css/Rooms.css" rel="stylesheet" type="text/css">

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
	
		<%@ include file="Navbar.jsp" %>
		
		<!-- -----------------Rooms----------------->
	<section class="rooms bg-light text-center" id="rooms">
		<div class="container">
			<h1>ROOMS</h1>
			<p>Hotel <span class="fa fa2x fa-bed"></span> Heaven Room Categories<p>
			
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/single.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Single</h2>
							<p class="card-text">Rs. 5000.00</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/02.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Standard</h2>
							<p class="card-text">Rs. 7000.00</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/06.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Deluxe</h2>
							<p class="card-text">Rs. 9000.00</p>
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
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/20.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Suite</h2>
							<p class="card-text">Rs. 15000.00</p>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/room/pres.jpg" class="card-img img-fluid">
						<div class="card-body">
							<h2 class="card-title">Presedential</h2>
							<p class="card-text">Rs. 18000.00</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
</body>
</html>
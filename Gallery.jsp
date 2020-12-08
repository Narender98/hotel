<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery</title>

<link href="css/Gallery.css" rel="stylesheet" type="text/css">

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
	
<body class="mybody">
		<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
		%>
	
		<!--  navbar -->
		<%@ include file="Navbar.jsp" %>
			
		<section class="portfolio bg-light text-center">
		<div class="container">
			<h1>Gallery</h1>
			<h3>Hotel <span class="fa fa-2x fa-bed"></span> Heaven Gallery</h3>
			
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/01.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/02.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/03.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
			</div>
			
			<!-------------2nd Row--------------->
			
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/04.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/05.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/06.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
			</div>
			
			<!-------------3rd Row--------------->
			
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/07.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/08.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
					<div class="card">
						<img src="./Images/Gallery/09.jpg" class="card-img img-fluid">
						<div class="card-body">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>
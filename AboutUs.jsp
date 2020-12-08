<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>

<link href="css/AboutUs.css" rel="stylesheet" type="text/css">

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

	<div class="heading col-lg-12 col-md-12 col-sm-12 col-12 d-block m-auto">
		<h1 class="col-lg-12 col-md-6 col-sm-12 col-10 d-block m-auto">Welcome to Hotel <span class="fa fa-2x fa-bed"></span> Heaven</h1>
		<h2 class="col-lg-12 col-md-6 col-sm-12 col-10 d-block m-auto">Hotel Heaven is a leading provider of hotel accommodation worldwide, offering booking services through its own network of localised websites and telephone call centres.
		Hotel Heaven gives travellers one of the widest selections of accommodation on the net, including both independent and major chain hotels as well as self-catering in over hundreds of thousands properties worldwide. The company offers a one-stop shopping source for hotel pricing, amenities and availability and also specialises in providing travellers with accommodation during sold-out periods.</h2>
	</div>
</body>
</html>
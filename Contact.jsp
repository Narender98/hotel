<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="${pageContext.request.contextPath}/css/Contact.css" rel="stylesheet">

</head>
<body>
	
	<%@ include file="Navbar.jsp" %>

	<form class="box col-lg-5 col-md-12 col-sm-12 col-12 d-block m-auto" action="Contact" method="post">
		<h1>Contact Us</h1>
		<h6>Please fill this form in decent manner</h6>
	
		<input type="text" name="Cname" placeholder="Enter Your Name" required="required"><br>
		<input type="email" name="Cemail" placeholder="Enter Your Email" required="required"><br>
		<input type="text" name="Cmsg" placeholder="Message" required="required"><br>
		<input type="submit" value="Send">
		
		<div class="success col-lg-12 col-md-12 col-sm-12 col-12 d-block m-auto">
			${successContactMessage}
		</div>
	</form>
</body>
</html>
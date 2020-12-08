<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<link href="${pageContext.request.contextPath}/css/AdminLogin.css" rel="stylesheet" >

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body class="mybody">
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
	%>
	
	<nav class="navbar navbar-expand-lg fixed-top">		
		<div class="logo">
			<a href="">Hotel <span class="fa fa-2x fa-bed"></span> Heaven</a>
		</div>
	</nav>
	
	<form class="box col-lg-4 col-md-8 col-sm-12 col-12 d-block m-auto" action="adminLogin" method="post">
		<h1>Admin Sign In</h1>
		
		<input type="email" name="adminEmail" placeholder="Email" required="required">
		<input type="password" name="adminPass" placeholder="Password" required="required">
		<input type="submit" value="Login">
		
		<div class="error">
			${errorMessageLogin}
		</div>
	</form>		
</body>
</html>
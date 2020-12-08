
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

<link href="${pageContext.request.contextPath}/css/Register.css" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">


<script>		
	function fetching()
	{	 
		if(document.getElementById('p2').value == "")
		{
			document.getElementById('p2').style.backgroundColor = '#dce3e6';
			document.getElementById('p1').style.backgroundColor = '#dce3e6';
		}
		else if(document.getElementById('p1').value == document.getElementById('p2').value) 
		{
	    	document.getElementById('p2').style.backgroundColor = 'green';
	    	document.getElementById('p1').style.backgroundColor = 'green';
		}
		else		
		{
		    document.getElementById('p2').style.backgroundColor = 'red';
		    document.getElementById('p1').style.backgroundColor = 'red';
		}
	}
</script>
</head>

<body class="mybody">
	
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
	%>
	
	<%@ include file="Navbar.jsp" %>
	
	<% if(session.getAttribute("Email")!=null) { %>
	
	<% response.sendRedirect("Homepage.jsp"); } else { %>
	
	 <form class="nk col-lg-5 col-md-8 col-sm-12 col-12 d-block m-auto" action="Register" method="post">
	 		<h1>Register Here</h1>
	 		<input type="text" name="Rname" placeholder="Name" required="required">
	  		<input type="email" name="Remail" placeholder="Email" required="required">
	  		<input type="tel" maxlength="10" name="Rmobile" placeholder="Mobile No." required="required">
	 		<input type="password" name="Rpass1" id="p1" placeholder="Password" required="required" onkeyup="fetching()">
	 		<input type="password" name="Rpass2" id="p2" placeholder="Confirm Password" required="required" onkeyup="fetching()">
	 		<input type="submit" value="Register">
					 		
	 		<div class="error col-lg-12 col-md-12 col-sm-12 col-12 d-block m-auto">
	 			${errorMessageRegister}
	 		</div>
	 		
	 		<div class="success col-lg-12 col-md-12 col-sm-12 col-12 d-block m-auto">
	 			${successMessageRegister}
	 		</div>
	 </form>
	 
	 <% } %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking</title>

<link href="${pageContext.request.contextPath}/css/Booking.css" rel="stylesheet">

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
	
	<%@ include file="Navbar.jsp" %>
	
	<% if(session.getAttribute("Email")==null) { %>
	 
	<%  response.sendRedirect("Login.jsp"); } else { %>  
	
	<div class="box col-lg-7 col-md-12 col-sm-12 col-12 d-block m-auto">
	
	<form action="Book" method="post">
	
	<h1>Book Here</h1>
	
	<div class="frm-row">
	  <label for="guestname" class="field-label">Please Enter Your Name</label>
	  <label for="guestname" class="field prepend-icon">
	    <input type="text" name="guestname" id="guestname" class="gui-input" required="required" placeholder="Name">
	    <span class="field-icon"><i class="fa fa-user"></i></span>  
	  </label>
	</div>
	               
	 <div class="frm-row">  
	  <div class="section colm colm6">
	    <label for="guestelephone" class="field-label">Enter Mobile Number</label>
	    <label for="guesttelephone" class="field prepend-icon">
	      <input type="text" maxlength="10" name="guestmobile" id="guestelephone" class="gui-input" required="required" placeholder="Mobile No.">
	      <span class="field-icon"><i class="fa fa-phone-square"></i></span>  
	    </label>
	  </div>
	 </div>
	
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="guestaddress" class="field-label">Enter Address</label>
	    <label for="guestaddress" class="field prepend-icon">
	      <input type="text" name="guestaddress" id="guestaddress" class="gui-input" required="required" placeholder="Address">
	      <span class="field-icon"><i class="fa fa-address-book"></i></span>  
	    </label>
	  </div>
	</div>
	
	  <div class="section colm colm6">
	    <label for="roomtype" class="field-label">Select Room Type</label>
	    <label for="roomtype" class="field prepend-icon">
	      <select id="roomtype" class="gui-input" name="guestroomtype" required="required" onmouseup="sync()" onkeyup="sync()">
	 		<option>Single</option>
	 		<option>Standard</option>     
	      	<option>Deluxe</option>    
	      	<option>Join</option>
	      	<option>Suite</option>
	      	<option>Presedential</option> 
	      </select>
	      <span class="field-icon"><i class="fa fa-home"></i></span>
	    </label>
	  </div>
	  
	  <script>
		function sync()
		{
			var n1 = document.getElementById('roomtype');
			var n3 = document.getElementById('n3');
			if(n1.value == ("Single"))
			{
				n3.value = 5000;
			}
			if(n1.value == ("Standard"))
			{
				n3.value = 7000;		
			}
			if(n1.value == ("Deluxe"))
			{
				n3.value = 9000;
			}
			if(n1.value == ("Join"))
			{
				n3.value = 12000;		
			}
			if(n1.value == ("Suite"))
			{
				n3.value = 15000;
			}
			if(n1.value == ("Presedential"))
			{
				n3.value = 18000;		
			}
		}
	  </script>
	  
	<div class=frm-row> 
	  <div class="section colm colm6">
	    <label for="price" class="field-label">Price</label>
	    <label for="price" class="field prepend-icon">
	      <input type="text" id="n3" name="bookingPrice" value="${n3}" class="gui-input" placeholder="Price" readonly="readonly">
	      <span class="field-icon"><i class="fa fa-home"></i></span>  
	    </label>
	  </div>
	</div>		
	
	<div class=frm-row> 
	  <div class="section colm colm6">
	    <label for="rooms" class="field-label">Number of Rooms</label>
	    <label for="rooms" class="field prepend-icon">
	      <input type="number" id="rooms" name="rooms" class="gui-input" required="required" placeholder="Number Of Rooms">
	      <span class="field-icon"><i class="fa fa-home"></i></span>  
	    </label>
	  </div>
	</div>
	 
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="adults" class="field-label">Number of Adults</label>
	    <label for="adults" class="field prepend-icon">
	      <input type="number" id="adults" name="Adults" class="gui-input" required="required" placeholder="Number Of Adults">
	      <span class="field-icon"><i class="fa fa-users"></i></span>  
	    </label>
	</div>
	</div>	  
	
	<div class=frm-row>   
	  <div class="section colm colm6">
	    <label for="children" class="field-label">Number of Children</label>
	    <label for="children" class="field prepend-icon">
	      <input type="number" id="children" name="children" class="gui-input" required="required" placeholder="Number Of Children">
	      <span class="field-icon"><i class="fa fa-users"></i></span>  
	    </label>
	  </div>
	</div>
	
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="checkin" class="field-label">Check-in Date</label>
	    <label for="checkin" class="field prepend-icon">
	      <input type="date" id="checkin" name="checkin" class="gui-input" required="required" placeholder="dd-mm-yyyy">
	      <span class="field-icon"><i class="fa fa-calendar"></i></span>  
	    </label>
	    </div>
	</div>
	
	<div class="frm-row">
	<div class="section colm colm6">
	    <label for="checkot" class="field-label">Check-out Date</label>
	    <label for="checkout" class="field prepend-icon">
	      <input type="date" id="checkout" name="checkout" class="gui-input" required="required" placeholder="dd-mm-yyyy">
	      <span class="field-icon"><i class="fa fa-calendar"></i></span>  
	    </label>
	</div>
	</div>
	 
	<div class="frm-row"> 
	<div class="spacer-t20 spacer-b30 switch">
	  <div class="tagline"><span class="check">Please answer these questions for a pleasant stay</span></div>
	</div>
	</div>
	 
	<div class="frm-row">
	  <div class="option-group field">
	  
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="switch1" id="switch1" value="Pet">
	        <span class="switch-label" data-on="YES" data-off="NO"></span>
	        <span class="check">Will you be bringing a pet?</span>
	      </label>
	    </div>
	         
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="switch2" id="switch2" value="PickUp">
	        <span class="switch-label" data-on="YES" data-off="NO"></span>
	        <span class="check">Do you need us to pick you up?</span>
	      </label>
	    </div>
	              
	  </div>
	</div>
	<input type="submit" name="submit" class="submit">

	</form>
	
	<div class="error col-lg-7 col-md-12 col-sm-12 col-12 d-block m-auto">
		${errorBookingMessage}	
	</div>
	
	<% } %>
	</div>
</body>

</html>
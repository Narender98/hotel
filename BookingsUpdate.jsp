<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookings Update</title>

<link href="css/BookingsUpdate.css" rel="stylesheet" type="text/css">

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
	
	<form action="Update" method="post">
	
	<div class="box col-lg-7 col-md-12 col-sm-12 col-12 d-block m-auto">
	
	<h1>Update Here</h1>
	
	<div class="section">
	  <label for="bookingid" class="field-label">Booking Id</label>
	  <label for="guestname" class="field prepend-icon">
	    <input type="text" name="nk" id="bookingid" class="gui-input" value="${ubookingid}" disabled="disabled">
	    <span class="field-icon"><i class="fa fa-id-badge"></i></span>  
	  </label>
	</div>
	
	<div class="section">
	  <label for="guestname" class="field-label">Name</label>
	  <label for="guestname" class="field prepend-icon">
	    <input type="text" name="confirmguestname" id="guestname" class="gui-input" required="required" value="${ucustname}">
	    <span class="field-icon"><i class="fa fa-user"></i></span>  
	  </label>
	</div>
	   
	  <div class="section colm colm6">
	    <label for="guestelephone" class="field-label">Mobile</label>
	    <label for="guestelephone" class="field prepend-icon">
	      <input type="text" maxlength="10" name="confirmguestelephone" id="guestelephone" class="gui-input" required="required" value="${ucustmobile }">
	      <span class="field-icon"><i class="fa fa-phone-square"></i></span>  
	    </label>
	  </div>
	
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="guestaddress" class="field-label">Enter Address</label>
	    <label for="guestaddress" class="field prepend-icon">
	      <input type="text" name="confirmguestaddress" id="guestaddress" class="gui-input" required="required" placeholder="Address" value="${ucustaddress}">
	      <span class="field-icon"><i class="fa fa-address-book"></i></span>  
	    </label>
	  </div>
	</div>
	
	<div class="section colm colm6">
	    <label for="roomtype" class="field-label">Select Room Type</label>
	    <label for="roomtype" class="field prepend-icon">
	      <select id="roomtype" class="gui-input" name="confirmguestroomtype" required="required" onmouseup="sync()" onkeyup="sync()">
	 		<option>${ucustroomtype}</option>
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
	      <input type="text" id="n3" name="confirmbookingPrice" value="${ucustroomprice}" class="gui-input" placeholder="Price" readonly="readonly" required="required">
	      <span class="field-icon"><i class="fa fa-home"></i></span>  
	    </label>
	  </div>
	</div>		
	
	 
	  <div class="section colm colm6">
	    <label for="rooms" class="field-label">Number of Rooms</label>
	    <label for="rooms" class="field prepend-icon">
	      <input type="number" id="rooms" name="confirmrooms" class="gui-input" required="required" value="${ucustrooms }">
	      <span class="field-icon"><i class="fa fa-home"></i></span>  
	    </label>
	  </div>
	 
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="adults" class="field-label">Adults</label>
	    <label for="adults" class="field prepend-icon">
	      <input type="number" id="adults" name="confirmAdults" class="gui-input" required="required" value="${ucustadults }">
	      <span class="field-icon"><i class="fa fa-users"></i></span>  
	    </label>
	  </div>
	   
	  <div class="section colm colm6">
	    <label for="children" class="field-label">Children</label>
	    <label for="children" class="field prepend-icon">
	      <input type="number" id="children" name="confirmchildren" class="gui-input" required="required" value="${ucustchildrens }">
	      <span class="field-icon"><i class="fa fa-users"></i></span>  
	    </label>
	  </div>
	</div>
	
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="checkin" class="field-label">Check-in Date</label>
	    <label for="checkin" class="field prepend-icon">
	      <input type="date" id="checkin" name="confirmcheckin" class="gui-input" required="required" value="${ucustcheckin }">
	      <span class="field-icon"><i class="fa fa-calendar"></i></span>  
	    </label>
	  </div>
	   
	  <div class="section colm colm6">
	    <label for="checkot" class="field-label">Check-out Date</label>
	    <label for="checkout" class="field prepend-icon">
	      <input type="date" id="checkout" name="confirmcheckout" class="gui-input" required="required" value="${ucustcheckout }">
	      <span class="field-icon"><i class="fa fa-calendar"></i></span>  
	    </label>
	  </div>
	</div>

	<div class="frm-row">
	  <div class="option-group field">
	   
	   <% if(session.getAttribute("ucustpetshow")==null) { %>
	   	
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="confirmswitch1" value="Pet">
	        <span class="switch-label"></span>
	        <span class="check">Will you be bringing a pet?</span>
	      </label>
	    </div>
	    
	    <% } else { %>
	         
	    
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="confirmswitch1" value="Pet" checked="checked">
	        <span class="switch-label"></span>
	        <span class="check">Will you be bringing a pet?</span>
	      </label>
	    </div>
	    
	    <% } %>     
	    
	    <% if(session.getAttribute("ucustpickupshow")==null) { %>
	         
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="confirmswitch2" value="PickUp">
	        <span class="switch-label" data-on="YES" data-off="NO"></span>
	        <span class="check">Do you need us to pick you up?</span>
	      </label>
	    </div>
	    
	    <% } else { %>
	    
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="confirmswitch2" value="PickUp" checked="checked">
	        <span class="switch-label" data-on="YES" data-off="NO"></span>
	        <span class="check">Do you need us to pick you up?</span>
	      </label>
	    </div>
	    
		<% } %>
		
		<input type="submit" value="Submit" class="confirm">
		
	</div>
	</div>
	</div>
	
	</form>
	
	<% } %>
	
	<div class="success col-lg-7 col-md-12 col-sm-12 col-12 d-block m-auto">
		${successUpdateMessage}
	</div>
	
</body>
</html>
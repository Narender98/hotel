<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cancel Bookings</title>

<link href="css/BookingCancel.css" rel="stylesheet" type="text/css">

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
	
	<form action="Cancel" method="post">
	
	<div class="box col-lg-7 col-md-12 col-sm-12 col-12 d-block m-auto">
	
	<h1>Cancel Here</h1>
	
	<div class="section">
	  <label for="bookingid" class="field-label">Booking Id</label>
	  <label for="guestname" class="field prepend-icon">
	    <input type="text" name="nk" id="bookingid" class="gui-input" value="${cbookingid}" readonly="readonly">
	    <span class="field-icon"><i class="fa fa-id-badge"></i></span>  
	  </label>
	</div>
	
	<div class="section">
	  <label for="guestname" class="field-label">Name</label>
	  <label for="guestname" class="field prepend-icon">
	    <input type="text" name="confirmguestname" id="guestname" class="gui-input" required="required" value="${ccustname}" readonly="readonly">
	    <span class="field-icon"><i class="fa fa-user"></i></span>  
	  </label>
	</div>
	   
	  <div class="section colm colm6">
	    <label for="guestelephone" class="field-label">Mobile</label>
	    <label for="guestelephone" class="field prepend-icon">
	      <input type="text" maxlength="10" name="confirmguestelephone" id="guestelephone" class="gui-input" required="required" value="${ccustmobile}" readonly="readonly">
	      <span class="field-icon"><i class="fa fa-phone-square"></i></span>  
	    </label>
	  </div>
	
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="guestaddress" class="field-label">Address</label>
	    <label for="guestaddress" class="field prepend-icon">
	      <input type="text" name="guestaddress" id="guestaddress" class="gui-input" value="${ccustaddress}" readonly="readonly">
	      <span class="field-icon"><i class="fa fa-address-book"></i></span>  
	    </label>
	  </div>
	</div>
	
	<div class="section colm colm6">
	    <label for="roomtype" class="field-label">Room Type</label>
	    <label for="roomtype" class="field prepend-icon">
	      <input type="text" maxlength="10" name="roomtype" id="roomtype" class="gui-input" value="${ccustroomtype}" readonly="readonly">
	      <span class="field-icon"><i class="fa fa-phone-square"></i></span>  
	    </label>
	  </div>
	 
	 <div class=frm-row> 
	  <div class="section colm colm6">
	    <label for="price" class="field-label">Price</label>
	    <label for="price" class="field prepend-icon">
	      <input type="text" id="n3" name="bookingPrice" value="${ccustroomprice}" class="gui-input" readonly="readonly" required="required">
	      <span class="field-icon"><i class="fa fa-home"></i></span>  
	    </label>
	  </div>
	</div>	
	 
	  <div class="section colm colm6">
	    <label for="rooms" class="field-label">Number of Rooms</label>
	    <label for="rooms" class="field prepend-icon">
	      <input type="number" id="rooms" name="confirmrooms" class="gui-input" required="required" value="${ccustrooms}" readonly="readonly">
	      <span class="field-icon"><i class="fa fa-home"></i></span>  
	    </label>
	  </div>
	 
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="adults" class="field-label">Adults</label>
	    <label for="adults" class="field prepend-icon">
	      <input type="number" id="adults" name="confirmAdults" class="gui-input" required="required" value="${ccustadults }" readonly="readonly">
	      <span class="field-icon"><i class="fa fa-users"></i></span>  
	    </label>
	  </div>
	   
	  <div class="section colm colm6">
	    <label for="children" class="field-label">Children</label>
	    <label for="children" class="field prepend-icon">
	      <input type="number" id="children" name="confirmchildren" class="gui-input" required="required" value="${ccustchildrens}"  readonly="readonly">
	      <span class="field-icon"><i class="fa fa-users"></i></span>  
	    </label>
	  </div>
	</div>
	
	<div class="frm-row">
	  <div class="section colm colm6">
	    <label for="checkin" class="field-label">Check-in Date</label>
	    <label for="checkin" class="field prepend-icon">
	      <input type="date" id="checkin" name="confirmcheckin" class="gui-input" required="required" value="${ccustcheckin }" readonly="readonly">
	      <span class="field-icon"><i class="fa fa-calendar"></i></span>  
	    </label>
	  </div>
	   
	  <div class="section colm colm6">
	    <label for="checkot" class="field-label">Check-out Date</label>
	    <label for="checkout" class="field prepend-icon">
	      <input type="date" id="checkout" name="confirmcheckout" class="gui-input" required="required" value="${ccustcheckout}" readonly="readonly">
	      <span class="field-icon"><i class="fa fa-calendar"></i></span>  
	    </label>
	  </div>
	</div>

	<div class="frm-row">
	  <div class="option-group field">
	   
	   <% if(session.getAttribute("ccustpetshow")==null) { %>
	   	
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="confirmswitch1" value="Pet" disabled="disabled">
	        <span class="switch-label"></span>
	        <span class="check">Will you be bringing a pet?</span>
	      </label>
	    </div>
	    
	    <% } else { %>
	         
	    
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="confirmswitch1" value="Pet" checked="checked" disabled="disabled">
	        <span class="switch-label"></span>
	        <span class="check">Will you be bringing a pet?</span>
	      </label>
	    </div>
	    
	    <% } %>     
	    
	    <% if(session.getAttribute("ccustpickupshow")==null) { %>
	         
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="confirmswitch2" value="PickUp" disabled="disabled">
	        <span class="switch-label" data-on="YES" data-off="NO"></span>
	        <span class="check">Do you need us to pick you up?</span>
	      </label>
	    </div>
	    
	    <% } else { %>
	    
	    <div class="section colm colm6">
	      <label class="switch">
	        <input type="checkbox" name="confirmswitch2" value="PickUp" checked="checked" disabled="disabled">
	        <span class="switch-label" data-on="YES" data-off="NO"></span>
	        <span class="check">Do you need us to pick you up?</span>
	      </label>
	    </div>
	    
		<% } %>
		
		<input type="submit" value="Cancel" class="cancel">
		
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
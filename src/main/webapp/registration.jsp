<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegistrationPage</title>
</head>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<style type="text/css">
.container {
	height: 600px;
	width: 60%;
	background-color: white;
	margin-top: 5%;
	border-radius: 30px;
	padding: 20px;
	box-shadow: 0px 0px 10px lightgrey;
}

.heading {
	color: #02f2da;
	font-family: sans-serif;
	font-weight: bolder;
}

.btn {
	height: 40px;
	width: 150px;
	background-color: #02f2da;
	color: white;
	border: none;
	border-radius: 10px;
	text-align: center;
	font-size: 20px;
}
</style>
</head>
<body>
<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<h2>
		<%=message%>
	</h2>
	<%
	}
	%>
	<div class="container" align="center">
		<h1 class="heading">REGISTRATION FROM</h1>
		<div style="margin-top: 50px; padding: 20px;">
			<form action="register" method="post">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">First Name</label> 
						<input name="firstName" type="text" class="form-control" id="fname" placeholder="First Name">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Last Name</label> 
						<input type="text"  name="lastName" class="form-control" id="lname" placeholder="Last Name">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Email</label> 
						<input type="text"  name="email" class="form-control" id="email" placeholder="Email">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Password</label> 
						<input type="text"  name="password" class="form-control" id="pass" placeholder="Password">
					</div>
				</div>

				<div class="form-group col-md-8">
					<label for="inputZip">Address</label>
					<input type="text"  name="address" class="form-control" id="address" placeholder="address">
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Phone</label> 
						<input type="text"  name="phone" class="form-control" id="phone" placeholder="Phone">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Confirm Pasword</label>
						<input type="text"  name="confirmpassword" class="form-control" id="confirmPass" placeholder="Confirm Pasword">
					</div>
				</div>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="Owner">Owner
					<!--  label class="form-check-label" for="inlineRadio1">Owner</label>-->
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="inlineRadioOptions" id="inlineRadio2" value="Buyer">Buyer
					<!-- label class="form-check-label" for="inlineRadio2">Buyer</label> -->
				</div>
		
		<button class="btn">Register</button>
		<br> <a href="login.jsp" style="color: #02f2da;">Existing
			user click Here.</a>
	
	</form>
	</div>
	</div>

</body>
</html>
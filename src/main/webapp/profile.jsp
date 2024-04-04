<%@page import="pillpeek_portal.UserCRUD"%>
<%@page import="pillpeek_portal.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>BuyerProfile</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="css/images/favicon.ico" />

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script src="js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.js" type="text/javascript"></script>
<script src="js/DD_belatedPNG-min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Tahoma_400-Tahoma_700.font.js" type="text/javascript"></script>
<script src="js/functions.js" type="text/javascript"></script>
<style>
.container {
	max-width: 600px;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
}

.profile-info {
	text-align: center;
	margin-bottom: 20px;
}

.profile-info img {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	object-fit: cover;
	border: 4px solid green;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease; /* Added transition */
}

.profile-info img:hover {
	transform: scaleX(-1); /* Flip horizontally on hover */
}

.edit-profile {
	text-align: center;
	margin-top: 20px;
}

.edit-profile button {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.edit-profile button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>

	<%
	HttpSession httpSession = request.getSession();
	System.out.println(httpSession);
	String email = (String) httpSession.getAttribute("session");
	System.out.println(email);
	UserCRUD userCRUD = new UserCRUD();
	User user = userCRUD.getAllUserInfoByEmail(email);
	System.out.println(user.getUserId());
	%>
	<!-- Wrapper -->
	<div id="wrapper">
		<div class="shell">
			<!-- Header -->
			<div id="header">

				<div id="user-options" class="shake-horizontal">
					<ul>

						<li><a title="logout" href="#">Logout</a></li>
					</ul>
				</div>
				<!-- Logo -->
				<h1 id="logo" class="scale-up-bottom">
					<a title="home" href="#"></a>
				</h1>
				<!-- Navigation -->
				<div id="navigation" class=".bounce-top">
					<ul>
						<li><a title="Home" href="homePage?uid=<%=user.getUserId()%>">Home<span></span></a></li>
						<li><a title="Products" href="allProduct.jsp">Products<span></span></a></li>
						<!-- <li><a title="About Us" href="#">About Us<span></span></a></li>-->
						<!-- <li><a title="Contact" href="#">Services<span></span></a></li> -->

						<div class="dropdown">
							<button class="dropbtn">MEDICINE</button>
							<div class="dropdown-content">
								<a href="ayurvedicProduct.jsp">Ayurvedic</a> <a
									href="allopaticProduct.jsp">Allopatic</a> <a
									href="homeopathicProduct.jsp">Homeopathic</a>
							</div>
						</div>

						<div class="dropdown">
							<button class="dropbtn">SERVICES</button>
							<div class="dropdown-content">
								<a href="#">Lab Test</a> <a href="#">Consult Doctor</a>
							</div>
						</div>

						<div class="dropdown">
							<button class="dropbtn">PROFILE</button>
							<div class="dropdown-content">
								<a href="profile.jsp">Your Profile</a> 
								<a href="changePassword.jsp">Change Password</a> 
								<a href="#">Orders</a> <a href="#">Logout</a>
							</div>
						</div>


					</ul>

				</div>
				<!-- END Navigation -->
				<div class="cl"></div>
			</div>
		</div>
		<!-- END Header -->
		
		
		
		
		<%
				String message = (String) request.getAttribute("message");
				if (message != null) {
				%>
				<h1 style="margin-top: 10px" align="center">
					<%=message%>
				</h1>
				<%
				}
				%>

		<div class="container">
			<h1>User Profile</h1>
			<div class="profile-info">
				<img
					src="https://i.pinimg.com/236x/97/43/ec/9743ecac80966a95e9d328c08b995c04.jpg"
					alt="Profile Picture">
				<h1 style="color: black;"><%=user.getFirstName()+" "+user.getLastName()%></h1>
				<br>
				<h1 style="color: black;">Email:<%=user.getEmail() %></h1>
				<h1 style="color: black;">Phone Number:<%=user.getPhone() %></h1>
				<h1 style="color: black;">Address:<%=user.getAddress() %></h1>
				
				
			</div>
			<div class="edit-profile">
				<a href="editProfile.jsp"><button>Edit Profile</button></a>
			</div>
		</div>
		
		
		
		
		
		

		<!-- Footer -->
		<div class="columns">
			<div class="shell">
				<div class="post">
					<div class="col about">
						<p class="heading">about Portal</p>
						<p>Class aptent taciti sociosqu ad litora torquent per conubia
							nostra, per inceptos himenaeos. Curabitur in sem mauris. Etiam
							nec ipsum a est facilisis fermentum mollis congue nibh. Proin
							porta pharetra mauris ac facilisis. Donec elementum imperdiet
							ante vel malesuada.</p>
						<a title="Read more" href="#">&raquo;&nbsp;read more</a>
					</div>
					<div class="col categories">
						<p class="heading">categories</p>
						<ul>
							<li><a title="Men sunglasses" href="#">Medicine</a></li>
							<li><a title="Women sunglasses" href="#">Consult Doctor</a></li>
							<li><a title="Children sunglasses" href="#">Lab-Test</a></li>
						</ul>
					</div>
					<div class="col info">
						<p class="heading">informations</p>
						<ul class="first">
							<li><a title="Shopping Bag" href="#">Order</a></li>
							<li><a title="Returns" href="#">Returns</a></li>
							<li><a title="Search" href="#">Search</a></li>
						</ul>
						<ul>
							<li><a title="About Us" href="#">About Us</a></li>
							<li><a title=" Terms Of Service" href="#"> Terms Of
									Service</a></li>
							<li><a title="Privacy Policy" href="#">Privacy Policy</a></li>
						</ul>
					</div>
					<div class="cl"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END Main  -->
	<div id="footer-push"></div>
	</div>
	<!-- END Wrapper -->
	<!-- Footer -->
	<div id="footer">
		<div class="shell">
			<div id="bottom-logo">
				<a title="home" href="http://css-free-templates.com/">Bottom
					logo</a>
			</div>
			<p>
				Copyright &copy; Pill-Peek Portal. All Rights Reserved. Design by: <a
					href="http://css-free-templates.com/">SSSG</a>
			</p>
			<div class="cl"></div>
		</div>
	</div>
	<!-- END Footer -->
</body>
<%@page import="pillpeek_portal.User"%>
<%@page import="pillpeek_portal.UserCRUD"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="css/images/favicon.ico" />
	
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<script src="js/jquery-1.7.min.js" type="text/javascript"></script>
	<script src="js/jquery.jcarousel.js" type="text/javascript"></script>
	<script src="js/DD_belatedPNG-min.js" type="text/javascript"></script>
	<script src="js/cufon-yui.js" type="text/javascript"></script>	
	<script src="js/Tahoma_400-Tahoma_700.font.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript"></script>		
</head>
<body>

<%
	HttpSession httpSession = request.getSession();
	System.out.println(httpSession);
	String email = (String) httpSession.getAttribute("session");
	System.out.println(email);
	UserCRUD userCRUD =new UserCRUD();
	User user=userCRUD.getAllUserInfoByEmail(email);
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
				<h1 id="logo" class="scale-up-bottom"><a title="home" href="#"></a></h1>
				<!-- Navigation -->
				<div id="navigation" class=".bounce-top">
					 <ul>
                        <li><a title="Home" href="homePage?uid=<%=user.getUserId()%>" >Home<span></span></a></li>
                        <li><a title="Products" href="allProduct.jsp">Products<span></span></a></li>
                       <!-- <li><a title="About Us" href="#">About Us<span></span></a></li>-->
                        <!-- <li><a title="Contact" href="#">Services<span></span></a></li> -->

						  <div class="dropdown">
							<button class="dropbtn">MEDICINE</button>
							<div class="dropdown-content">
							  <a href="ayurvedicProduct.jsp">Ayurvedic</a>
							  <a href="allopaticProduct.jsp">Allopatic</a>
							  <a href="#">Homeopathic</a>
							</div>
						  </div>
						  
						  <div class="dropdown">
							<button class="dropbtn">SERVICES</button>
							<div class="dropdown-content">
							  <a href="#">Lab Test</a>
							  <a href="#">Consult Doctor</a>
							</div>
						  </div>

						  <div class="dropdown">
							<button class="dropbtn">PROFILE</button>
							<div class="dropdown-content">
							  <a href="profile.jsp">Your Profile</a>
							  <a href="changePassword.jsp">Change Password</a>
							  <a href="#">Orders</a>
							  <a href="#">Logout</a>
							</div>
						  </div>
 						  				  
						
                    </ul>
					
				</div>
				<!-- END Navigation -->
				<div class="cl"></div>
			</div>	
		</div> 
<!-- END Header -->





<div class="main-div" align="center">
		<div class="form1">
			<form action="update" method="post">
				<input type="text" name="id" hidden="true" value="<%=user.getUserId()%>" /><br>
				<br> <label>First Name :</label> <input class="input" type="text"
					name="fName" value="<%=user.getFirstName()%>" /><br> <br>
				<label>Last Name :</label> <input class="input" type="text" name="lName"
					value="<%=user.getLastName()%>" /><br> <br> <label>Email
					Id :</label> <input class="input" type="text" name="email" value="<%=user.getEmail()%>" /><br>
				<br> <label>Phone Number :</label> <input class="input" type="tel"
					name="phone" value="<%=user.getPhone()%>" /><br> <br> <label>Address
					:</label> <input class="input" type="text" name="address" value="<%=user.getAddress()%>" />
				<br> <br>

				<button>Update</button>
				<a href="profile.jsp"><input class="but"  type="button"
					value="Cancel"></a><br>

			</form>
		</div>
	</div><br>









<!-- Footer -->		
			<div class="columns">
				<div class="shell">
					<div class="post">
						<div class="col about">
							<p class="heading">about Portal</p>
							<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur in sem mauris. Etiam nec ipsum a est facilisis fermentum mollis congue nibh. Proin porta pharetra mauris ac facilisis. Donec elementum imperdiet ante vel malesuada.</p>
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
								<li><a title=" Terms Of Service" href="#"> Terms Of Service</a></li>
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
			<div id="bottom-logo"><a title="home" href="http://css-free-templates.com/">Bottom logo</a></div>
			<p>Copyright &copy; Pill-Peek Portal. All Rights Reserved. Design by: <a href="http://css-free-templates.com/">SSSG</a></p>
			<div class="cl"></div>
		</div>
	</div>
	<!-- END Footer -->
</body>

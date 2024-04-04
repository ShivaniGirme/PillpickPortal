<%@page import="pillpeek_portal.User"%>
<%@page import="pillpeek_portal.UserCRUD"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>AddProduct</title>
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
						<li><a title="Home" href="ownerHomePage.jsp">Home<span></span></a></li>
						<li><a title="stock" href="#">Stock<span></span></a></li>
						<!-- <li><a title="About Us" href="#">About Us<span></span></a></li> -->
						<!-- <li><a title="Contact" href="#">Services<span></span></a></li> -->


						<div class="dropdown">
							<button class="dropbtn">Product</button>
							<div class="dropdown-content">
								<a href="addProduct.jsp">Add Product</a> <a href="#">Edit
									Product</a>
								<!-- <a href="#">Delete Product</a> -->
								<a href="#">Total order</a>
							</div>
						</div>

						<div class="dropdown">
							<button class="dropbtn">Profile</button>
							<div class="dropdown-content">
								<a href="ownerProfile.jsp">Your Profile</a> <a
									href="ownerChangePassword.jsp">Change Password</a> <a href="#">Logout</a>
							</div>
						</div>
					</ul>

				</div>
				<!-- END Navigation -->
				<div class="cl"></div>
			</div>
		</div>
		<!-- END Header -->


		<div style="text-align: left;padding-left: 45%">
			<form id="productForm" action="addProduct" method="POST">

				<label for="pname">Product Name:</label> <input type="text"
					id="pname" name="name" required><br> <br> <label
					for="price">Price:</label> <input type="text" id="price"
					name="price" required><br> <br> <label
					for="pname">Product Quantity:</label> <input type="text"
					id="quantity" name="quantity" required><br> <br>
				<label for="mfgDate">Mfg Date:</label> <input type="text"
					id="mfgDate" name="mgfDate" required><br> <br> <label
					for="expDate">Exp Date:</label> <input type="text" id="expDate"
					name="expDate" required><br> <br> <label>Product
					Type:</label> <input type="radio" name="productType" id="inlineRadio1"
					value="allopathic">Allopathic <input type="radio"
					name="productType" id="inlineRadio2" value="ayurvedic">Ayurvedic
				<input type="radio" name="productType" id="inlineRadio2"
					value="homeopathic">Homeopathic <br> <br> <label
					for="description">Description:</label> <input id="description"
					name="discription" required></input><br> <br> <input
					id="userId" name="userId" value="<%=user.getUserId()%>" hidden></input><br>
				<br>
					
				<button class="btn" >Add</button>
			</form>
		</div>
	</div>

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
</html>
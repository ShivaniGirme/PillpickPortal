<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="pillpeek_portal.Product"%>
<%@page import="pillpeek_portal.ProductCRUD"%>
<%@page import="pillpeek_portal.UserCRUD"%>
<%@page import="pillpeek_portal.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>AllProduct</title>
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
								<a href="profile.jsp">Your Profile</a> <a href="changePassword.jsp">Change
									Password</a> <a href="#">Orders</a> <a href="#">Logout</a>
							</div>
						</div>


					</ul>

				</div>
				<!-- END Navigation -->
				<div class="cl"></div>
			</div>
		</div>
		<!-- END Header -->

		<div>

			<%
			ProductCRUD product1 = new ProductCRUD();
			List<Product> alist = product1.getAllProduct();
			Collections.reverse(alist);
			%>
			<%
			for (Product product : alist) {
			%>
			<div align="center" class="post-container"style="display: flex;justify-content: center;">
				
				<%if(product.getCategory().equalsIgnoreCase("allopathic")){ %>
				<div>
					<img alt="allopathicProduct"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbGQ0FWfmEFpO6XHGDJ3IebwHhL7TkhsPOdg&s">
				</div>
				<%}else if(product.getCategory().equalsIgnoreCase("ayurvedic")){ %>
				<div>
					<img alt="ayurvedicProduct"
						src="https://static.vecteezy.com/system/resources/thumbnails/001/223/612/small/medicinal-neem-leaves-in-mortar-and-pestle.jpg">
				</div>
				<%}else if(product.getCategory().equalsIgnoreCase("homeopathic")){ %>
				<div>
					<img alt="homeopathicProduct"
						src="data:image/jpeg;base64,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">
				</div>
				<%} %>
				<%-- <div align="center" style="border: 2px solid black; width: 400px;"> --%>
				<div class="abt-post">
					<input value="buyerId" name="<%=user.getUserId()%>" hidden>
					<input value="ownerId" name="<%=product.getUserId()%>" hidden>
					<label hidden>Product Id: <%=product.getProductId()%></label><br>
					<label>PRODUCT NAME:<%=product.getName()%></label><br> <label>QUANTITY:<%=product.getQuantity()%></label><br>
					<label>PRICE: <%=product.getPrice()%></label><br> <label>DESCRIPTION:<%=product.getDiscription()%></label><br>
					<label>Category:<%=product.getCategory()%></label><br>
					<button class="btn">OrderNow</button>
				</div>
			</div>
			<br> <br>
			<%
			}
			%>
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
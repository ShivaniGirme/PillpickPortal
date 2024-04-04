<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>OwnerHomePage</title>
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
                        <li><a title="Home" href="ownerHomePage.jsp">Home<span></span></a></li>
                        <li><a title="stock" href="#">Stock<span></span></a></li>
                        <!-- <li><a title="About Us" href="#">About Us<span></span></a></li> -->
                        <!-- <li><a title="Contact" href="#">Services<span></span></a></li> -->


						<div class="dropdown">
							<button class="dropbtn">Product</button>
							<div class="dropdown-content">
							  <a href="addProduct.jsp">Add Product</a>
							  <a href="#">Edit Product</a>
							 <!-- <a href="#">Delete Product</a> -->
                              <a href="#">Total order</a>
							</div>
						  </div>

						  <div class="dropdown">
							<button class="dropbtn">Profile</button>
							<div class="dropdown-content">
							  <a href="ownerProfile.jsp">Your Profile</a>
							  <a href="ownerChangePassword.jsp">Change Password</a>
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
		<!-- Main -->
		<div id="main">
			<!-- Slider Holder -->
			<div id="slider-holder">
				<div class="shell">
					<!-- Main Slider -->
					<div id="slider">
						<a title="Details" class="main-button" href="#">Explore Medico</a>					
						<ul>
							<!-- <a title="Details" class="main-button" href="#">Medicine</a>		 -->
							<li>
								<img src="css/images/medicine.jpg" alt="medicine" style="height: 70vh; width: 48%;"/>
								<div class="caption">
									<h2>MEDICINE </h2>
									<h3>Sed nec mi et nisi pulvinar egestas</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum metus in turpis dapibus non dictum justo imperdiet. </p>
								</div>
								<div class="cl"></div>
							</li>
							<!-- <a title="Details" class="main-button" href="#">Consult Doctor</a>		 -->
							<li>
								<img src="css/images/doctor.jpg" alt="A man with sun glasses" style="height: 50vh; width: 48%;"/>
								<div class="caption">
									<h2>CONSULT DOCTOR</h2>
									<h3>Sed nec mi et nisi pulvinar egestas</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum metus in turpis dapibus non dictum justo imperdiet. </p>
								</div>
								<div class="cl"></div>
							</li>
							<!-- <a title="Details" class="main-button" href="#">view Medicine</a>		 -->
							<li>
								<img src="css/images/Labtest.jpg" alt="A man with sun glasses" style="height: 50vh; width: 48%;"/>
								<div class="caption">
									<h2>LAB-TEST </h2>
									<h3>Sed nec mi et nisi pulvinar egestas</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum metus in turpis dapibus non dictum justo imperdiet. </p>
								</div>
								<div class="cl"></div>
							</li>
						</ul>
						<div id="slider-nav">
							<a title="medicine" href="#">1<span class="fade"></span><span class="active"></span><img src="css/images/medicine.jpg" alt="A young man with sun glasses" /></a>
							<a title="consult doctor" href="#">2<span class="fade"></span><span class="active"></span><img src="css/images/doctor.jpg" alt="A young woman with sun glasses" /></a>
							<a title="take lab test" href="#">3<span class="fade"></span><span class="active"></span><img src="css/images/Labtest.jpg" alt="A little girl with curly hair and sun glasses" /></a>
						</div>						
					</div>
					<!-- END Main Slider -->								
				</div>	
			</div>
			<!-- END Slider Holder -->
			<!-- Featured Items -->
			<div class="items">
				<div class="shell">
					<h4>Featured Products</h4>
					<div class="shop-by">
						<ul>
							<li>Shop by:</li>
							<li><a title="men" href="#">Allopathic</a></li>
							<li><a title="woman" href="#">Ayurvedic</a></li>
							<li><a title="children" href="#">Homeopathic</a></li>							
						</ul>		
					</div>
					<!-- Products -->
					<div class="products">
						<div class="product-frame">
							<div class="product">
								<a title="View Details" class="view-button" href="#">View Details</a>
								<div class="img-holder">	
									<a title="View Details" href="#"><img src="css/images/kamini.jpg" alt="Images of Kamini" /></a>
								</div>								
								<div class="img-bottom"></div>
								<div class="price-box">
									<p>price</p>
									<p class="price"><span class="dollar">$</span>159<sup>.99</sup></p>
								</div>
								<div class="product-entry">
									<p class="model">kamini<br /></p>
									<p class="model"><span>product: 48</span></p>
									<p class="product-info">Sed at fringilla est. Donec ac mi augue. Mauris id sem at felis sollicitudin sollicitudin. Integer lorem tortor, porttitor vitae porta ut, auctor 	at urna. In convallis...</p>
								</div>
							</div>
						</div>
						<div class="product-frame">
							<div class="product">
								<a title="View Details" class="view-button" href="#">View Details</a>
								<div class="img-holder">	
									<a title="View Details" href="#"><img src="css/images/AlphaAcid.jpg" alt="Images of AlphaAcid" /></a>
								</div>								
								<div class="img-bottom"></div>
								<div class="price-box">
									<p>price</p>
									<p class="price"><span class="dollar">$</span>129<sup>.99</sup></p>
								</div>
								<div class="product-entry">
									<p class="model">AlphaAcid<br /></p>
									<p class="model"><span>product: 57</span></p>
									<p class="product-info">Sed at fringilla est. Donec ac mi augue. Mauris id sem at felis sollicitudin sollicitudin. Integer lorem tortor, porttitor vitae porta ut, auctor 	at urna. In convallis...</p>
								</div>
							</div>
						</div>
						<div class="product-frame">
							<div class="product">
								<a title="View Details" class="view-button" href="#">View Details</a>
								<div class="img-holder">	
									<a title="View Details" href="#"><img src="css/images/patholab.jpg" alt="Images of Patholab" /></a>
								</div>								
								<div class="img-bottom"></div>
								<div class="price-box">
									<p>price</p>
									<p class="price"><span class="dollar">$</span>249<sup>.99</sup></p>
								</div>
								<div class="product-entry">
									<p class="model">Patholab<br /></p>
									<p class="model"><span>product: 99</span></p>
									<p class="product-info">Sed at fringilla est. Donec ac mi augue. Mauris id sem at felis sollicitudin sollicitudin. Integer lorem tortor, porttitor vitae porta ut, auctor 	at urna. In convallis...</p>
								</div>
							</div>
						</div>
						<div class="product-frame">
							<div class="product">
								<a title="View Details" class="view-button" href="#">View Details</a>
								<div class="img-holder">	
									<a title="View Details" href="#"><img src="css/images/Ecosprin.jpg" alt="Images of Ecosprin" /></a>
								</div>								
								<div class="img-bottom"></div>
								<div class="price-box">
									<p>price</p>
									<p class="price"><span class="dollar">$</span>99<sup>.99</sup></p>
								</div>
								<div class="product-entry">
									<p class="model">Ecosprin<br /></p>
									<p class="model"><span>product: 66</span></p>
									<p class="product-info">Sed at fringilla est. Donec ac mi augue. Mauris id sem at felis sollicitudin sollicitudin. Integer lorem tortor, porttitor vitae porta ut, auctor 	at urna. In convallis...</p>
								</div>
							</div>
						</div>
						<div class="product-frame">
							<div class="product">
								<a title="View Details" class="view-button" href="#">View Details</a>
								<div class="img-holder">	
									<a title="View Details" href="#"><img src="css/images/Termometer.jpg" alt="Images of Thermometer" /></a>
								</div>								
								<div class="img-bottom"></div>
								<div class="price-box">
									<p>price</p>
									<p class="price"><span class="dollar">$</span>199<sup>.99</sup></p>
								</div>
								<div class="product-entry">
									<p class="model">Thermometer<br /></p>
									<p class="model"><span>product: 12</span></p>
									<p class="product-info">Sed at fringilla est. Donec ac mi augue. Mauris id sem at felis sollicitudin sollicitudin. Integer lorem tortor, porttitor vitae porta ut, auctor 	at urna. In convallis...</p>
								</div>
							</div>
						</div>
						<div class="product-frame">
							<div class="product">
								<a title="View Details" class="view-button" href="#">View Details</a>
								<div class="img-holder">	
									<a title="View Details" href="#"><img src="css/images/sugar.jpg" alt="Images of Glucometer" /></a>
								</div>								
								<div class="img-bottom"></div>
								<div class="price-box">
									<p>price</p>
									<p class="price"><span class="dollar">$</span>284<sup>.99</sup></p>
								</div>
								<div class="product-entry">
									<p class="model">Glucometer<br /></p>
									<p class="model"><span>product: 76</span></p>
									<p class="product-info">Sed at fringilla est. Donec ac mi augue. Mauris id sem at felis sollicitudin sollicitudin. Integer lorem tortor, porttitor vitae porta ut, auctor 	at urna. In convallis...</p>
								</div>
							</div>
						</div>
						<div class="cl"></div>
					</div>
					<!-- END Products -->
				</div>
			</div>
			<!-- END Featured Items -->
			<!-- Bestsellers -->
			<div class="items">
				<div class="shell">
					<h4>Best Remedy</h4>
					<div class="products-slider">
						<ul>
							<li>
								<div class="product">
									<div class="img-holder">	
										<a title="View Details" href="#"><img src="css/images/Paracetamol.jpg" alt="" /></a>
									</div>								
									<div class="img-bottom"></div>
									<div class="price-box">
										<p>price</p>
										<p class="price"><span class="dollar">$</span>284<sup>.99</sup></p>
									</div>
									<div class="product-entry">
										<p class="model">Paracetamol<br /><br></p>
										<p class="model"><span>product: 76</span></p>									
									</div>
								</div>
							</li>
							<li>
								<div class="product">
									<div class="img-holder">	
										<a title="View Details" href="#"><img src="css/images/Ecosprin.jpg" alt="" /></a>
									</div>								
									<div class="img-bottom"></div>
									<div class="price-box">
										<p>price</p>
										<p class="price"><span class="dollar">$</span>284<sup>.99</sup></p>
									</div>
									<div class="product-entry">
										<p class="model">Ecosprin<br /><br></p>
										<p class="model"><span>product: 76</span></p>									
									</div> 
								</div>
							</li>
							<li>
								<div class="product">
									<div class="img-holder">	
										<a title="View Details" href="#"><img src="css/images/Zendu.jpg" alt="Images of zendu" /></a>
									</div>								
									<div class="img-bottom"></div>
									<div class="price-box">
										<p>price</p>
										<p class="price"><span class="dollar">$</span>284<sup>.99</sup></p>
									</div>
									<div class="product-entry">
										<p class="model">Zendu Pancharishta<br /></p>
										<p class="model"><span>product: 76</span></p>									
									</div>
								</div>
							</li>
							<li>
								<div class="product">
									<div class="img-holder">	
										<a title="View Details" href="#"><img src="css/images/AlphaAcid.jpg" alt="Images of AlphaAcid" /></a>
									</div>								
									<div class="img-bottom"></div>
									<div class="price-box">
										<p>price</p>
										<p class="price"><span class="dollar">$</span>284<sup>.99</sup></p>
									</div>
									<div class="product-entry">
										<p class="model">AlphaAcid<br /><br></p>
										<p class="model"><span>product: 76</span></p>									
									</div>
								</div>
							</li>
							<li>
								<div class="product">
									<div class="img-holder">	
										<a title="View Details" href="#"><img src="css/images/patholab.jpg" alt="Images of patholab" /></a>
									</div>								
									<div class="img-bottom"></div>
									<div class="price-box">
										<p>price</p>
										<p class="price"><span class="dollar">$</span>284<sup>.99</sup></p>
									</div>
									<div class="product-entry">
										<p class="model">patholab<br /><br> </p>
										<p class="model"><span>product: 76</span></p>									
									</div> 
								</div>
							</li>
							<li>
								<div class="product">
									<div class="img-holder">	
										<a title="View Details" href="#"><img src="css/images/Omee.jpg" alt="Images of Omee" /></a>
									</div>								
									<div class="img-bottom"></div>
									<div class="price-box">
										<p>price</p>
										<p class="price"><span class="dollar">$</span>284<sup>.99</sup></p>
									</div>
									<div class="product-entry">
										<p class="model">Omee<br /><br> </p>
										<p class="model"><span>product: 76</span></p>									
									</div>
								</div>
							</li>
							<li>
								<div class="product">
									<div class="img-holder">	
										<a title="View Details" href="#"><img src="css/images/AmritKalash.jpg" alt="Images of AmritKalash" /></a>
									</div>								
									<div class="img-bottom"></div>
									<div class="price-box">
										<p>price</p>
										<p class="price"><span class="dollar">$</span>284<sup>.99</sup></p>
									</div>
									<div class="product-entry">
										<p class="model">AmritKalash<br /> <br></p>
										<p class="model"><span>product: 76</span></p>									
									</div>
								</div>
							</li>						
						</ul>
					</div>
				</div>	
			</div>	
			<!-- END Bestsellers -->		
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
</html>
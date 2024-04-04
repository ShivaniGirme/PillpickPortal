<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="description"
	content="Intro component with sign up form - Frontend Mentor">
<meta name="keywords"
	content="Intro component with sign up form,  Frontend Mentor">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/png" sizes="32x32"
	href="images/favicon-32x32.png">
<title>login page</title>
<link rel="stylesheet" href="login.css">
</head>


<body>
	<main class="main-container">
		
		<section class="info-section">


			<p class="focus-in-expand-fwd">
				Most Trusted Brand <b><i>PillPick</i></b> Buy Medicine At Low Price
			</p>
		</section>
		<section class="form-section">
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
			<button class="sales-btn">
				LOGIN </span>
			</button>
			<!-- Form -->
			<form class="main-form" action="login" method="post">

				<!-- Email -->
				<div class="input-field">
					<input class="user-email" type="email" placeholder="Email Address"
						name="email" id="email">
					<div class="user-email-error"></div>
					<label for="user-email" class="email-label"></label>
				</div>
				<!-- Password -->
				<div class="input-field">
					<input class="user-pass" type="password" placeholder="password"
						name="password" id="password">
					<div class="user-pass-error"></div>
					<label for="user-pass" class="pass-label"></label>
				</div>
				<div class="input-field">

					<button class="submit-info" id="submit-info" type="submit">Submit</button>
					<label for="submit-info" class="success-msg"></label>

				</div>
				<label class="tnc" for="submit-info"><a href="registration.jsp">Don't
						have account ?</a> </label>
			</form>
		</section>
	</main>
	<script src="app.js"></script>
</body>

</html>
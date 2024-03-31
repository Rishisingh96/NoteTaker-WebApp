<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="Component/allCSSLink.jsp"%>
<style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

.container {
	min-height: 100%;
	position: relative;
}

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 50px; /* Adjust height as needed */
	background-color: #f5f5f5; /* Adjust background color as needed */
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<%@include file="Component/navbar.jsp"%>
		<div>
			<h1>This is Home Notes</h1>
			<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Register</p>

						<form action="register" method="post">
						<div class="mb-3">
								<label class="form-label">user Id</label> 
								<input required
									name="id" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Full Name</label> 
								<input required
									name="fullname" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn bg-success text-white col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
		</div>
		<div class="footer">
			<%@include file="Component/footer.jsp"%>
		</div>
</body>
</html>
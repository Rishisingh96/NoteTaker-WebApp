<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
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
		</div>
		<div class="footer">
			<%@include file="Component/footer.jsp"%>
		</div>
</body>
</html>
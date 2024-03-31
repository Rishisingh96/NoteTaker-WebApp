<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>

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


		<h1>This is Add Notes</h1>

		<!--this is address form -->
		<div>
			<form action="saveNote" method="post">
				<!-- post use for security , bydefault get -->
				<div class="mb-3">
					<label for="noteTitle" class="form-label">Note Title</label> <input
						name="title" type="text" class="form-control" id="noteTitle"
						aria-describedby="titleHelp" placeholder="Enter here" required>
					<div id="titleHelp" class="form-text">Enter a title for your
						note.</div>
				</div>
				<div class="mb-3">
					<label for="noteContent" class="form-label">Note Content</label>
					<textarea name="content" class="form-control" id="noteContent"
						rows="5" required></textarea>
				</div>
				<button type="submit" class="btn btn-primary" value="saceNote">Save
					Note</button>

			</form>
		</div>
		<div class="footer">
			<%@include file="Component/footer.jsp"%>
		</div>
	</div>


</body>

</html>
</html>
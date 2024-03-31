<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
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


		<h1>Edit your note</h1>
		<br>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId()%>" name="noteId" type="hidden" />

			<!-- post use for security , bydefault get -->
			<div class="mb-3">
				<label for="noteTitle" class="form-label">Note Title</label> <input
					name="title" type="text" class="form-control" id="noteTitle"
					aria-describedby="titleHelp" placeholder="Enter here" required
					value="<%=note.getTitle()%>">
				<div id="titleHelp" class="form-text">Enter a title for your
					note.</div>
			</div>
			<div class="mb-3">
				<label for="noteContent" class="form-label">Note Content</label>
				<textarea name="content" class="form-control" id="noteContent"
					rows="5" required><%=note.getContent()%></textarea>
			</div>
			<button type="submit" class="btn btn-primary" value="saceNote">Save
				Note</button>

		</form>
		<div class="footer">
			<%@include file="Component/footer.jsp"%>
		</div>
	</div>

</body>
</html>
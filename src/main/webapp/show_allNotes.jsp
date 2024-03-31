<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entities.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Notes: Notes taker</title>

<%@include file="Component/allCSSLink.jsp"%>
<link href="Component/style.css" rel="stylesheet" />
<style>
.container {
	min-height: calc(100vh - 50px);
	position: relative;
	padding-bottom: 50px;
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
		<br>
		<h1 class="text-uppercase">All Notes</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query query = s.createQuery("from Note");
				List<Note> list = query.list();
				for (Note note : list) {
				%>
				<div class="card mb-3">
					<img src="img/img.jpg" style="max-width: 150px;"
						class="card-img-top m-4" alt="...">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p class="card-text"><small class="text-muted">Added: <%=note.getAddedDate()%></small></p>
						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-primary">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-danger">Update</a>
						</div>
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>
		<footer class="footer">
			<div class="container">
				<p>&copy; 2024 Rishi Singh@MyNotes.com</p>
			</div>
		</footer>
	</div>
</body>
</html>

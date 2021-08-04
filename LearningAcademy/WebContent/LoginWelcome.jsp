<%@page import="javapages.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	User user = (User) session.getAttribute("logUser");
	if (user == null) {
		response.sendRedirect("Home.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
	padding: 0;
	background-image: url('img/blank.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	top: 6em;
}

.navbar {
	width: 100%;
	
	overflow: auto;
}

.navbar h3 {
	float: right;
	padding: 12px;
	color: #0077b3;
	text-decoration: none;
	font-size: 20px;
	text-transform: uppercase;
	
}

div.info {
	position: fixed;
	top: 30%;
	left: 30%;
}

a:visited {
	color: green;
}

/* mouse over link */
a:hover {
	color: hotpink;
}
</style>
<link rel="icon" href="img/student.png" type="image/x-icon">
</head>

<body>
	<div class="navbar">
		
		<h3><i
			class="fa fa-fw fa-user"></i> <%=user.getName()%></h3>
	</div>


	<div class="info">
		<h1>
			Welcome -
			<%=user.getName()%></h1>

		<h3>
			Your Email:
			<%=user.getEmail()%>
		</h3>
		<h3>
			Your Class:
			<%=user.getclassname()%>
		</h3>

		<h6>
			<a style="text-decoration: none;" href="Student.jsp">click here</a>TO
			Register as Student in Learning Academy
		</h6>
		<br>

		<button onclick="document.location='Home.jsp'">Log Out</button>


	</div>


</body>
</html>

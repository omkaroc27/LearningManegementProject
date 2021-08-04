<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Not Found</title>
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

div {
	position: fixed;
	top: 30%;
	left: 30%;
}

button {
	background-color: windowframe;
}
</style>
<link rel="icon" href="img/student.png" type="image/x-icon">
</head>
<body>
	<div>
		<h1>Your Account Does't Exist !</h1>
		<h6>*please Check your password and Email ID is Correct or not
			Than Login Again</h6>
		<br>

		<button onclick="document.location='Home.jsp'">Login</button>


	</div>
</body>
</html>
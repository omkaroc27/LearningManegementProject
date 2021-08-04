<%@page import="javapages.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url('img/home.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	font-family: Arial, Helvetica, sans-serif;
}

.box, .regbox {
	width: 320px;
	height: 420px;
	background: none;
	margin: 0;
	padding: 30px;
	top: 70%;
	left: 70%;
	color: #fff;
	border-radius: 15px;
	position: fixed;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
}

.avatar {
	margin: 0;
	padding: 0;
	width: 150px;
	height: 150px;
	top: -82%;
	position: absolute;
	left: calc(10% - 5px);
	border-radius: 50%;
}

.box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.box input {
	width: 100%;
	margin-bottom: 15px;
	border-radius: 5px;
}

.box input[type="text"], .box input[type="password"] {
	border: none;
	background: transparent;
	border-bottom: 1px solid thin;
	outline: none;
	height: 35px;
	color: #fff;
	font-size: 15px;
}

.box input[type="submit"] {
	display: block;
	border: none;
	outline: none;
	height: 55px;
	background: #eccc68;
	color: #0942354;
	font-size: 20px;
	border-radius: 20px;
}

.box input[type="submit"]:hover {
	border: none;
	outline: none;
	height: 55px;
	background: #ff6348;
	color: #fff;
	font-size: 20px;
	border-radius: 20px;
	cursor: pointer;
	transition: .3s ease-out;
}

.box a {
	text-decoration: none;
	color: #fff;
	font-size: 16px;
	line-height: 20px;
}

.box a:hover {
	color: navy;
}

h6.note {
	font-size: xx-small;
	text-decoration: none;
}

h6.note1 {
	font-size: xx-small;
	text-decoration: none;
	float: right;
	left: 80%;
}
</style>
<link rel="icon" href="img/student.png" type="image/x-icon">
</head>
<body>
	<div class="container">
		<div class="box">

			<form action="<%=request.getContextPath()%>/LoginServlet"
				method="post">
				<p>Useremail</p>
				<input type="text" placeholder=" Enter Your Username" name="email"
					required>
				<p>Password</p>
				<input type="password" placeholder="Enter Your Password"
					name="password" required> <input type="submit"
					value="Login"> <a href="Registration.jsp" target="_blank">Create
					New Account</a>
				<h6 class="note">*If you Are not creating new Account than
					Create new Account First</h6>
			</form>
			<br>
			<h6 class="note1">Developed by Omkar Charate (OCWEBTECH)</h6>

		</div>



	</div>
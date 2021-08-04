<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
</head>
<body>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Account</title>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">

<style>

body {
	background-image: url('img/reg.jpg');
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
	top: 58%;
	left: 50%;
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
	border-bottom: opx solid;
	outline: none;
	height: 35px;
	color: navy;
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

select.op{
color: none;
border: none;
color:gray;
border-bottom-color: navy;
background-color: transparent;
}
option{
background-color: transparent;
color: black;
border-bottom: thin;
}
</style>
<link rel="icon" href="img/student.png" type="image/x-icon">
</head>
<div class="container">
	<div class="regbox box">
		<form action="<%=request.getContextPath()%>/Registre" method="post">
			<p>Username</p>
			<input type="text" placeholder="Enter Your Full Name" name="name"
				required>
			<p>Useremail</p>
			<input type="text" placeholder="Enter Your Email" name="email"
				required>
			<p>Password</p>
			<input type="password" placeholder="Enter Password" name="password"
				required>
				
				 <label for="cars" class="op">Class :
				
				<select class="op" type="text"
				id="cars" name="classname">
				<option value="5Th Class">5TH Class</option>
				<option value="6TH Class">6TH Class</option>
				<option value="7TH Class">7TH Class</option>
				<option value="8Th Class">8Th Class</option>
				<option value="9Th Class">9Th Class</option>
				<option value="10Th Class">10Th Class</option>
			</select> 
			</label> 
			<br>
			<br>
			<input type="submit" value="Register"> <a href="Home.jsp">Already
				have Account?</a>
		</form>
	</div>
</div>
</body>

</html>
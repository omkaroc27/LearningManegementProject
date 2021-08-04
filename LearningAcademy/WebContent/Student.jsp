<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student of Academy</title>
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
	top: 20%;
	left: 20%;
}
a:visited {
  color: #29293d;
}

/* mouse over link */
a:hover {
  color: hotpink;
}
.box, .regbox {
	width: 320px;
	height: 420px;
	background: none;
	margin: 0;
	padding: 30px;
	top: 38%;
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

.box input[type="text"], .box input[type="password"],.box input[type="email"] {
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
<body>
<div class="container">
	<div class="regbox box">
<h2 align="center">Add New Student</h2>
<form action="SaveServlet" method="post">

<p>Name:<p><input type="text" name="name" required="required" placeholder="Enter Your full Name"/>
<p>Password:</p><input type="password" name="password" required="required"  placeholder="Enter Your Password" />
<p>Email:</p><input type="email" name="email" required="required" placeholder="Enter Your Email"/>

<label for="city" class="op">City:
<select class="op" name="city" style="width:150px">
<option>Kolhapur</option>
<option>Pune</option>
<option>Nagpur</option>
<option>Mumbai</option>
<option>Nashik</option>
<option>Sangli</option>
</select>
</label>
<br>

<br>
<input  type="submit" value="Save Student"/>

</form>

<br/>
<a href="ViewServlet" style="text-decoration: none;">view Students Of Learning Academy </a>
</div>
</div>
</body>
</html>
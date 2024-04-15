<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Index</title>
<style>
th {
	background-color: red;
}

table {
	background-color: white;
}

.top {
	padding: 5px;
	text-decoration: none;
	background-color: rgb(236, 21, 21);
}

.top a {
	text-decoration: none;
	font-weight: bolder;
	padding: 20px;
	color: white;
	padding-bottom: 30px;
}
</style>
</head>
<body>
	<center>
		<h1>Students Attendance System</h1>
	</center>

	<div class="top">

		<a href="studentsIndex.jsp">Home</a> <a href="Attedance.jsp">Submit
			Attendance</a> <a href="Assignment.html">Submit Assignment</a> <a
			href="logout.html">Logout</a>
	</div>
	<br>
</body>
</html>
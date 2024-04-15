<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Attendance</title>
<style>
Body {
	font-family: Calibri, Helvetica, sans-serif;
	background-image: url(home1.png);
	background-size: 100%;
	background-repeat: no-repeat;
}

button {
	background-color: rgb(232, 245, 53);
	width: 100%;
	height: 30px;
	color: green;
	padding: 15x;
	margin: 10x 0px;
	border: none;
	cursor: poiter;
	font-weight: bolder;
}

input[type=text], input[type=password] {
	width: 100%;
	margin: 8px 0;
	padding: 12px 20px;
	diplay: inline-block;
	border: 1px solid purple;
	box-sizing: border-box;
}

button:hover {
	opacity: 0.7;
}

.cancelButton {
	width: auto;
	padding: 10px 30px;
	margin: 10px 55px;
	color: red;
}

.container {
	padding: 20px;
	padding-bottom: 30px;
	background-color: rgb(186, 208, 211);
	width: 35%;
	border: 1px solid lightblue;
	margin: auto;
}

h2 {
	text-align: center;
}

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

	<center>
		<h2>Students Attendance</h2>

	</center>

	<form method="post" action="AttendanceAction.jsp">
		<div class="container">

			<h2>Student Attendance</h2>


			<label for="student_name">Student Name:</label> <input type="text"
				id="student_name" name="student_name" required><br>
			<br> <label for="student_name">Student Id:</label> <input
				type="text" id="student_id" name="student_id" required><br>
			<br> <label for="attendance">Attendance:</label> <select
				id="attendance" name="attendance">
				<option value="present">Present</option>
				<option value="absent">Absent</option>
			</select><br>
			<br>


			<button type="submit">Submit</button>

			<button type="button" class="cancelButton">

				<a href="studentsIndex.jsp"
					style="text-decoration: none; color: red;">Cancel</a>
			</button>


		</div>
	</form>
</body>
</html>
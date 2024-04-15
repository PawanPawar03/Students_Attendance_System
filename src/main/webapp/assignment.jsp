<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Upload Assignment</title>
</head>
<body>
	<h2>Upload Assignment</h2>
	<form action="assignmentAction.jsp" method="post"
		enctype="multipart/form-data">
		<label for="studentName">Student Name:</label> <input type="text"
			id="studentName" name="t1" required><br> <br> <label
			for="studentID">Student ID:</label> <input type="text" id="studentID"
			name="t2" required><br> <br> <label for="file">Choose
			file:</label> <input type="file" id="file" name="file" required><br>
		<br> <input type="submit" value="Upload">
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance Action</title>
</head>
<body>
	<%
	String studentName = request.getParameter("student_name");
	String studentId = request.getParameter("student_id");

	String attendance = request.getParameter("attendance");

	// Database connection parameters
	String url = "jdbc:mysql://localhost:3306/Pawan";
	String username = "root";
	String password = "2084912";

	Connection conn = null;
	PreparedStatement stmt = null;

	try {
		// Connect to the database
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apeksha", "root", "2084912");

		// Insert data into the database
		String query = "INSERT INTO students (student_name,student_id, attendance) VALUES (?, ?, ?)";
		stmt = conn.prepareStatement(query);
		stmt.setString(1, studentName);
		stmt.setString(2, studentId);
		stmt.setString(3, attendance);
		stmt.executeUpdate();

		out.println("<h2>Attendance recorded successfully!</h2>");
	} catch (Exception e) {
		out.println("<h2>Error: " + e.getMessage() + "</h2>");
	} finally {
		// Close the database connection
		try {
			if (stmt != null)
		stmt.close();
			if (conn != null)
		conn.close();
		} catch (SQLException e) {
			out.println("<h2>Error: " + e.getMessage() + "</h2>");
		}
	}
	%>
	<a href="studentsIndex.jsp"><h2>Back</h2></a>
</body>
</html>
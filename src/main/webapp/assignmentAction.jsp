<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Pawan", "root", "2084912");
		PreparedStatement st = con.prepareStatement("insert into assignments values(?,?)");
		st.setString(1, request.getParameter("t1"));
		st.setString(2, request.getParameter("t2"));
		;

		st.executeUpdate();
		response.sendRedirect("StudentLogin.html");

		con.close();
	} catch (Exception e) {
		out.println(e);
	}
	%>

</body>
</html>
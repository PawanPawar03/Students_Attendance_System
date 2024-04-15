<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login Action</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apeksha", "root", "2084912");
		PreparedStatement stat = con.prepareStatement("select * from Registration where username=? and password=?");
		stat.setString(1, request.getParameter("t8"));
		stat.setString(2, request.getParameter("t9"));
		ResultSet rs = stat.executeQuery();
		if (rs.next())
			response.sendRedirect("studentsIndex.jsp");
		else
			response.sendRedirect("StudentLoginFailed.html");
		rs.close();
	} catch (Exception e) {
		out.println(e);

	}
	%>

</body>
</html>
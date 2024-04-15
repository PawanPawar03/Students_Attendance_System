<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apeksha", "root", "2084912");
		PreparedStatement stat = con.prepareStatement("select * from admin where Username=? and Password=?");
		stat.setString(1, request.getParameter("t1"));
		stat.setString(2, request.getParameter("t2"));
		ResultSet rs = stat.executeQuery();
		if (rs.next())
			response.sendRedirect("AdminIndex.jsp");
		else
			response.sendRedirect("AdminLoginFailed.html");
		rs.close();
	} catch (Exception e) {
		out.println(e);

	}
	%>

</body>
</html>
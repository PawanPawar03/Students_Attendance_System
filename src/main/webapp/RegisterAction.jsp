<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Register Action</title>
</head>
<body>
	<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/apeksha","root","2084912");
	PreparedStatement st=con.prepareStatement("insert into Registration values(?,?,?,?,?,?,?,?,?)");
	st.setString(1,request.getParameter("t1"));
	st.setString(2,request.getParameter("t2"));;
	st.setString(3,request.getParameter("t3"));
	st.setString(4,request.getParameter("t4"));
	st.setString(5,request.getParameter("t5"));
	st.setString(6,request.getParameter("t6"));
	st.setString(7,request.getParameter("t7"));
	st.setString(8,request.getParameter("t8"));
	st.setString(9,request.getParameter("t9"));
	
	
	st.executeUpdate();
	response.sendRedirect("StudentLogin.html");

	con.close();
}
catch(Exception e)
{
	out.println(e);
}


%>

</body>
</html>
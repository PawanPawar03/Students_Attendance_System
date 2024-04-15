<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrated Students Data</title>
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
		<h1>Sunstone Edutech</h1>
	</center>

	<div class="top">

		<a href="AdminIndex.jsp">Home</a> <a href="registratedStudent.jsp">Registrated
			Students</a> <a href="retriveAttendance.jsp">Attendance Submited
			Students</a> <a href="RetriveAssignment.jsp">Assignment Submited
			Students</a> <a href="AdminLogout.html">Logout</a>
	</div>
	<br>

	<h2>Registrated Students</h2>
	<div class="table">
		<table cellpadding="14" cellspacing="18" border="0">

			<tr>
				<th>First Name</th>
				<th>Middle Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Class</th>

				<th>Student id</th>
				<th>Branch</th>
				<th>Username</th>
				<th>Password</th>
			</tr>
			</div>

			<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apeksha", "root", "2084912");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from registration");
				while (rs.next()) {
			%>
			<tr style="background-color: skyblue;">
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getString(9)%></td>
			</tr>
</body>
<%
}
con.close();
} catch (Exception e) {
out.println(e);
}
%>
</div>
</table>
</html>
package servlet;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AssignmentServlet")
@MultipartConfig
public class AssignmentServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String studentName = request.getParameter("student_name");
		String studentID = request.getParameter("student_id");
		Part filePart = request.getPart("assignment_file");

		String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
		InputStream fileContent = filePart.getInputStream();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apeksha", "root", "2084912");
			PreparedStatement pstmt = con.prepareStatement(
					"INSERT INTO assignments (student_name, student_id, assignment_text) VALUES (?, ?, ?)");
			pstmt.setString(1, studentName);
			pstmt.setString(2, studentID);
			pstmt.setString(3, fileName);
			pstmt.executeUpdate();

			Files.copy(fileContent, Paths.get("C:\\Users\\pawan\\Desktop\\Assignment", fileName),
					StandardCopyOption.REPLACE_EXISTING);

			response.sendRedirect("success.html");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			response.sendRedirect("FailedAssignment.html");
		}
	}
}

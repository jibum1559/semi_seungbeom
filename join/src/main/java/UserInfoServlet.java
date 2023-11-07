

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
		String jdbcUsername = "sm";
		String jdbcPassword = "sm1234";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		/*
		 	USER_ID
			ID
			PASSWORD
			PWCHECK
			PHONE_NUMBER
			EMAIL
			ADDRESS
		 */	
			//int userId = Integer.parseInt(request.getParameter("user_id"));
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String pwcheck = request.getParameter("pwcheck");
			String phoneNumber = request.getParameter("phone_Number");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			
			String sql = "INSERT INTO USERINFO (ID, PASSWORD, PWCHECK, PHONE_NUMBER, EMAIL, ADDRESS)"
					+ "VALUES (?, ?, ?, ?, ?, ?)";
			
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			//preparedStatement.setInt(1, userId);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, pwcheck);
			preparedStatement.setString(4, phoneNumber);
			preparedStatement.setString(5, email);
			preparedStatement.setString(6, address);
			
			preparedStatement.executeUpdate();
			
			//request.getSession().setAttribute("user_id", userId);
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("password", password);
			request.getSession().setAttribute("pwcheck", pwcheck);
			request.getSession().setAttribute("phone_number", phoneNumber);
			request.getSession().setAttribute("email", email);
			request.getSession().setAttribute("address", address);
			
			response.sendRedirect("UserInfoSuccess.jsp");
			
		} catch (SQLException e) {
			// 실패할 경우 이동할 페이지 설정
			response.sendRedirect("UserInfoError.jsp");
			e.printStackTrace();
		}
	}
}

package com.kh.semi.likeList;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UserIdCheck")
public class UserIdCheck extends HttpServlet {
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
			Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			
			String userid = request.getParameter("userID");
			String userpw = request.getParameter("userPW");
			
			String sql = "SELECT FROM userinfo WHERE ID = ? AND PASSWORD = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, userid);
			ps.setString(2, userpw);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("userID", userid);
				session.setAttribute("userPW", userpw);
				
				response.sendRedirect("내 정보 조회 페이지.jsp");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

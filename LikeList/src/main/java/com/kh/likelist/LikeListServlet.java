package com.kh.likelist;

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

/**
 * Servlet implementation class LikeListServlet
 */
@WebServlet("/LikeListServlet")
public class LikeListServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
		String jdbcUserName = "sm";
		String jdbcPassWord = "sm1234";
		
		try {
			Class.forName("oracle:jdbc:OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection conn = DriverManager.getConnection(jdbcUrl, jdbcUserName, jdbcPassWord);
			String sql = "SELECT R.REALESTATE_NAME, R.REALESTATE_TYPE, R.REALESTATE_CONDITION, R.REALESTATE_SALEPRICE, R.REALESTATE_MONTHLY, R.REALESTATE_AREA, R.FLOORS"
					+ "FROM LIKELIST L"
					+ "JOIN USERINFO U ON U.USER_ID = L.USER_ID"
					+ "JOIN REALESTATEINFO R ON R.REALESTATE_ID = L.REALESTATE_ID"
					+ "WHERE L.USER_ID = ?";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

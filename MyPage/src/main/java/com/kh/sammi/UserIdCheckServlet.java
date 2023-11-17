package com.kh.sammi;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UserIdCheckServlet")
public class UserIdCheckServlet extends HttpServlet {
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
			
			String userid = request.getParameter("userid");
			String userpw = request.getParameter("password");
			
			String sql = "SELECT * FROM userinfo WHERE ID = ? AND PASSWORD = ? AND USER_ID = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setNString(1, userid);
			ps.setString(2, userpw);
			ps.setInt(3, 3);
			
			ResultSet rs = ps.executeQuery();
			/*
	 		USER_ID	NUMBER(5,0)
			ID	VARCHAR2(50 BYTE)
			PASSWORD	VARCHAR2(50 BYTE)
			PWCHECK	VARCHAR2(50 BYTE)
			PHONE_NUMBER	VARCHAR2(15 BYTE)
			EMAIL	VARCHAR2(50 BYTE)
			ADDRESS	VARCHAR2(50 BYTE)
			 * */
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("userid", rs.getString("id"));
				session.setAttribute("password", rs.getString("password"));
				session.setAttribute("phonenumber", rs.getString("phone_number"));
				session.setAttribute("email", rs.getString("EMAIL"));
				session.setAttribute("address", rs.getString("ADDRESS"));
				
				response.sendRedirect("MyInfo.jsp");
			} else {
				//�߸� �Է� �� "���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�." �˾�â ����
				response.sendRedirect("IdCheck.jsp?error=true");
				request.setAttribute("error", "true");
				 
			   // RequestDispatcher rd = request.getRequestDispatcher("IdCheck.jsp");
			    
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//response.sendRedirect("MyInfo.jsp");
			e.printStackTrace();
		}
	}

}
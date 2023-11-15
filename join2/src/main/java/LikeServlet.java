

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LikeServlet")
public class LikeServlet extends HttpServlet {
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
			
			/* LIKE_ID	NUMBER(5,0)
	 		   INTERMEDIARY_ID	NUMBER(5,0)
	 	       USER_ID	NUMBER(5,0)
			   REALESTATE_ID	NUMBER(5,0)
			*/
			
			int likeId = Integer.parseInt(request.getParameter("like_id"));
			int intermediaryId = Integer.parseInt(request.getParameter("intermediary_id"));
			int userId = Integer.parseInt(request.getParameter("user_id"));
			int realestateId = Integer.parseInt(request.getParameter("realestate_id"));
			
			//Âò ¸ñ·Ï Á¶È¸ select
			
			String sql = "SELECT ID FROM USERINFO WHERE user_id=1";
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

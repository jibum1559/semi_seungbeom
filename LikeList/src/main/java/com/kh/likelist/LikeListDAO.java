package com.kh.likelist;

import java.util.ArrayList;
import java.util.List;

public class LikeListDAO {
	String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
	String jdbcUserName = "sm";
	String jdbcPassWord = "sm1234";
	
	public LikeListDAO() {
		try {
			Class.forName("oracle:jdbc:OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public List<LikeList> getLikeList(){
		List<LikeList> realestates = new ArrayList<>();
		return realestates;
	}
}

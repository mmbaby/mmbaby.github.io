package com.leafvely.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class LoginDao {
	
	public LoginDao() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

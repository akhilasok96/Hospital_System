package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnect {
	private static Connection conn;
	
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmgmt", "root", "Cashew@786");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}

package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDao {
	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean register(User u) {
		boolean f = false;
		
		try {
			String sql = "insert into user_details(full_name,email,password) values(?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, u.getFullName());
			pst.setString(2, u.getEmail());
			pst.setString(3, u.getPassword());
			
			int i = pst.executeUpdate();
			
			if(i == 1) {
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public User login(String em, String ps) {
		
		User u = null;
		
		try {
			String sql = "select * from user_details where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, em);
			pst.setString(2, ps);
			
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				u = new User();
				u.setId(rs.getInt(1));
				u.setFullName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return u;
	}
}

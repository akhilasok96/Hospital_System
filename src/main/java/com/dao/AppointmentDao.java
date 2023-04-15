package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Appointment;

public class AppointmentDao {
	
	private Connection conn;

	public AppointmentDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addAppointment(Appointment ap) {
		
		boolean f = false;
		
		try {
			String sql = "insert into appointment(userid,fullName,gender,age,appo_date,email,phone,diseases,doctorid,address,status) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1,ap.getUserId());
			pst.setString(2, ap.getFullName());
			pst.setString(3, ap.getGender());
			pst.setString(4, ap.getAge());
			pst.setString(5, ap.getAppoinDate());
			pst.setString(6, ap.getEmail());
			pst.setString(7, ap.getPhNo());
			pst.setString(8, ap.getDiseases());
			pst.setInt(9, ap.getDoctorId());
			pst.setString(10, ap.getAddress());
			pst.setString(11, ap.getStatus());

			int i = pst.executeUpdate();
			if (i == 1) {
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
}

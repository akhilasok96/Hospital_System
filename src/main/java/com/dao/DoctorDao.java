package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

import com.entity.Doctor;

public class DoctorDao {
	private Connection conn;

	public DoctorDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean registerDoctor(Doctor d) {
		boolean f = false;
		
		try {
			String sql = "insert into doctor(full_name, dob, qualification, specialization, email, mobno, password) values(?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, d.getFullName());
			pst.setString(2, d.getDob());
			pst.setString(3, d.getQualification());
			pst.setString(4, d.getSpecialization());
			pst.setString(5, d.getEmail());
			pst.setString(6, d.getMobNo());
			pst.setString(7, d.getPassword());
			
			int i = pst.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public List<Doctor> getAllDoctor(){
		
		List<Doctor> list = new ArrayList<Doctor>();
		
		Doctor d = null;
		
		try {
			String sql = "select * from doctor order by id desc";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				d = new Doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialization(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobNo(rs.getString(7));
				d.setPassword(rs.getString(8));
				list.add(d);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public Doctor getDoctorById(int id){
			
			Doctor d = null;
			
			try {
				String sql = "select * from doctor where id = ?";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, id);
				
				ResultSet rs = pst.executeQuery();
				while(rs.next()) {
					d = new Doctor();
					d.setId(rs.getInt(1));
					d.setFullName(rs.getString(2));
					d.setDob(rs.getString(3));
					d.setQualification(rs.getString(4));
					d.setSpecialization(rs.getString(5));
					d.setEmail(rs.getString(6));
					d.setMobNo(rs.getString(7));
					d.setPassword(rs.getString(8));
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return d;
		}
	
	public boolean updateDoctor(Doctor d) {
		boolean f = false;
		
		try {
			String sql = "update doctor set full_name=?, dob=?, qualification=?, specialization=?, email=?, mobno=?, password=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, d.getFullName());
			pst.setString(2, d.getDob());
			pst.setString(3, d.getQualification());
			pst.setString(4, d.getSpecialization());
			pst.setString(5, d.getEmail());
			pst.setString(6, d.getMobNo());
			pst.setString(7, d.getPassword());
			pst.setInt(8, d.getId());
			
			int i = pst.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public boolean deleteDoctor(int id) {
		boolean f = false;
		
		try {
			String sql = "delete from doctor where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			
			int i = pst.executeUpdate();
			
			if(i == 1) {
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public Doctor login(String email, String psw) {
		
		Doctor d = null;
		
		try {
			
			String sql = "select * from doctor where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, psw);
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				d = new Doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialization(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobNo(rs.getString(7));
				d.setPassword(rs.getString(8));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return d;
	}
}

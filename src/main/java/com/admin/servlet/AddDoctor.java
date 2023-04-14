package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Doctor;
import com.db.dbconnect;
import com.dao.DoctorDao;

@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String fullName = req.getParameter("fullName");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			String specialization = req.getParameter("specialization");
			String email = req.getParameter("email");
			String mobno = req.getParameter("mobno");
			String password = req.getParameter("password");
			
			Doctor d = new Doctor(fullName, dob, qualification, specialization, email, mobno, password);
			
			DoctorDao dao = new DoctorDao(dbconnect.getConn());
			
			HttpSession session = req.getSession();
			
			if(dao.registerDoctor(d)) {
				
				session.setAttribute("succMsg", "Doctor Added Sucessfully");
				resp.sendRedirect("admin/doctor.jsp");
			}else {
				
				session.setAttribute("errorMsg", "Error: Doctor not added");
				resp.sendRedirect("admin/doctor.jsp");
			}
					
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
}

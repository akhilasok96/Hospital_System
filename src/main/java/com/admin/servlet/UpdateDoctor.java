package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.dbconnect;
import com.entity.Doctor;

@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet{

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
			
			int id = Integer.parseInt(req.getParameter("id"));
			
			Doctor d = new Doctor(id, fullName, dob, qualification, specialization, email, mobno, password);
			
			DoctorDao dao = new DoctorDao(dbconnect.getConn());
			
			HttpSession session = req.getSession();
			
			if(dao.updateDoctor(d)) {
				
				session.setAttribute("succMsg", "Doctor Details Updated Sucessfully");
				resp.sendRedirect("admin/view_doctor.jsp");
			}else {
				
				session.setAttribute("errorMsg", "Error: Doctor Details Not Updated");
				resp.sendRedirect("admin/view_doctor.jsp");
			}
					
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
}

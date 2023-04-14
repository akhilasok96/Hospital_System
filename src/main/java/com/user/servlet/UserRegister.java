package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.dbconnect;
import com.dao.UserDao;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			User u = new User(fullName, email, password);
			
			UserDao dao = new UserDao(dbconnect.getConn());
			
			HttpSession session = req.getSession();
			
			boolean f = dao.register(u);
			
			if(f) {
				session.setAttribute("succMsg", "Registered Sucessfully");
				resp.sendRedirect("signup.jsp");
			}else {
				session.setAttribute("errorMsg", "Server Error");
				resp.sendRedirect("signup.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}

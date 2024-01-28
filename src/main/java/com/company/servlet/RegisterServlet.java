package com.company.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.*;

import com.company.dao.*;
import com.company.dao.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private static UserDao userDao=new UserDaoImpl();
 
    public RegisterServlet() {
        super();
        
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
	
		
		User user=new User();
		user.setEmail(email);
		user.setUsername(username);
		user.setPassword(password);
	
		
		
		//UserDao userDao=new UserDaoImpl();
		
	
		if(userDao.addUser(user)) {
			response.sendRedirect("login.jsp?registration=success");
		}else {
			response.sendRedirect("register.jsp?error=1");
		}
	}

}

package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.amzi.dao.RegisterDao;

public class RegisterServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String n=request.getParameter("usernameregister");  
		String p=request.getParameter("userpassregister"); 
		String e=request.getParameter("useremailregister");

		if(RegisterDao.create(n, p,e)){  
			RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");  
			rd.forward(request,response);  
		}  
		else{  
			//out.print("<p style=\"color:red\">Registration unsuccessfull!!</p>");  
			request.setAttribute("Message", "Registration unsuccessfull!! Username or Email id already exists...");
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");  
			rd.forward(request,response);   
		}  

		out.close();  
	}  
}

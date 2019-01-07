package com.amzi.servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.LoginDao;

public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");   
		
		String n=request.getParameter("username");  
		String p=request.getParameter("userpass"); 
		
		HttpSession session = request.getSession();


		if(LoginDao.validate(n, p)){  
			if(session!=null){
				session.setAttribute("name", n);
			}
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			rd.forward(request,response);  
		}  
		else{  
			request.setAttribute("Message", "Sorry username or password error");
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");  
			rd.forward(request,response);   
		}  
	}  
}  
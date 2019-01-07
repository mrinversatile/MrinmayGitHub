package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.PasswordDao;

public class PasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String n=request.getParameter("username");  
		String e=request.getParameter("useremail");
		HttpSession session = request.getSession(false);
		String p= PasswordDao.forgotPassword(n,e);
		if(session!=null)
		session.setAttribute("password", p);
		if(p!=null && p!=""){  
			request.getRequestDispatcher("iamM.jsp").include(request, response);  
			out.println("<script type=\"text/javascript\">");  
            out.println("alert('Your password is << "+p+" >>please dont loose it !');");  
            out.println("</script>");  
            out.close();   
            
		}  
		else{  
			//out.print("<p style=\"color:red\">Password could  not be retrieved...please check username and email address!!</p>");  
			request.setAttribute("Message", "Password could  not be retrieved...please check username and email address!!");
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");  
			rd.forward(request,response);   
		}  

		out.close();  
	}  
}

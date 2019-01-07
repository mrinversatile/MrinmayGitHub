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
import com.amzi.exception.MyOwnException;

public class PasswordChangeServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String n=request.getParameter("username");  
		String op=request.getParameter("userpass");
		String np=request.getParameter("newuserpass");
		HttpSession session = request.getSession(false);
		if(op.equalsIgnoreCase(np)){
			try {
				throw new MyOwnException("You can't use old password!!");
			} catch (MyOwnException e) {
				e.printStackTrace();
				request.setAttribute("Message", "You can't use old password!!");
				RequestDispatcher rd=request.getRequestDispatcher("error.jsp");  
				rd.forward(request,response); 
			}
		}else{
			
		
		if(session!=null){
		if(PasswordDao.changePassword(n,op,np)){  
			request.getRequestDispatcher("index.jsp").include(request, response);  
			out.println("<script type=\"text/javascript\">");  
            out.println("alert('Your password has been changed .. !');");  
            out.println("</script>");  
            out.close();   
            
		}  
		else{  
			request.setAttribute("Message", "Password could  not be altered...please check your username and old password!!");
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");  
			rd.forward(request,response);  
		} 
		}
		}
		out.close();  
	}  
}

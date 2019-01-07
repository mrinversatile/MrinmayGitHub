package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.DeleteDao;

public class DeleteServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");   
		PrintWriter out = response.getWriter();  
		
		String n=request.getParameter("usernamedelete");  
		String p=request.getParameter("userpassdelete");
		String e=request.getParameter("useremail");

		if(DeleteDao.delete(n,p,e)){  
			HttpSession session=request.getSession();  
            session.invalidate();  
			request.getRequestDispatcher("iamM.jsp").include(request, response);  
			out.println("<script type=\"text/javascript\">");  
            out.println("alert('Your account has been deleted .. !');");  
            out.println("</script>");  
            out.close(); 
		}  
		else{  
			request.setAttribute("Message", "Sorry,could not delete user!!");
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");  
			rd.forward(request,response); 
		}  
  out.close();
	} 
	
}

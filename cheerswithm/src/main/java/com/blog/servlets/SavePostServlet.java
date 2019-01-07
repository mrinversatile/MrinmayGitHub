package com.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.blog.controller.PostCrud;

public class SavePostServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String postcontent= request.getParameter("posttext");  
		String pid=request.getParameter("pid");  
		String user=request.getParameter("username");
		try {
			if(PostCrud.updatePost(postcontent,pid,user)){
				
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request,response);
				out.println("<script type=\"text/javascript\">");  
	            out.println("alert('Your change has been saved .. !');");  
	            out.println("</script>");  
	            out.close();
			}else
				out.print("<p style=\"color:red\">Post Creation unsuccessfull!!</p>");   
		} catch (SQLException e) {
			out.print("<p style=\"color:red\">Post Creation unsuccessfull!!</p>");   
			e.printStackTrace();
		}
		
		 finally{
			 out.close();	 
		 }

		  
	}  

}

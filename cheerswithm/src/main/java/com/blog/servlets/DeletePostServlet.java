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

public class DeletePostServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String pid=request.getParameter("pid");  
		String username=request.getParameter("username");
		try {
			if(PostCrud.deletePost(pid,username)){
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
				rd.forward(request,response);
			}else
				out.print("<p style=\"color:red\">Post deletion unsuccessfull!!</p>");   
		} catch (SQLException e) {
			out.print("<p style=\"color:red\">Post deletion unsuccessfull!!</p>");   
			e.printStackTrace();
		}
		
		 finally{
			 out.close();	 
		 }

		  
	}  
	  
}  



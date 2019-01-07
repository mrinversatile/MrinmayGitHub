package com.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.blog.controller.CommentCrud;

public class CreateCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String n=request.getParameter("name");  
		String c=request.getParameter("comments"); 
		String pid=request.getParameter("pid");
	
		try {
			if(CommentCrud.createComment(n, c, pid)){
				RequestDispatcher rd=request.getRequestDispatcher("ViewPost.jsp");  
				rd.forward(request,response);
			}else
				out.print("<p style=\"color:red\">Comment Creation unsuccessfull!!</p>");   
		} catch (SQLException e) {
			out.print("<p style=\"color:red\">Comment Creation unsuccessfull!!</p>");   
			e.printStackTrace();
		}
		
		 finally{
			 out.close();	 
		 }

		  
	}  
}

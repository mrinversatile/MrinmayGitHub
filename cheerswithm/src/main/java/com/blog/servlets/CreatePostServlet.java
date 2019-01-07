package com.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blog.controller.PostCrud;


public class CreatePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String n=request.getParameter("name");  
		String t=request.getParameter("title"); 
		String p=request.getParameter("post");
		String c=request.getParameter("category");
		HttpSession session = request.getSession(false);
		if(session!=null){
		session.setAttribute("name", n);
		}
		
		try {
			if(PostCrud.createPost(n, t, p,c)){
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
				rd.forward(request,response);
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

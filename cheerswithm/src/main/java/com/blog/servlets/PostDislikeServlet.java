package com.blog.servlets;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blog.connection.ConnectionManager;

public class PostDislikeServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		HttpSession session4 = request.getSession();
		String post_id = session4.getAttribute("id").toString();
		int dislike;
		if (request.getParameter("dislike")==null || request.getParameter("dislike")==""){
			 dislike=0;
		}else{
			 dislike=Integer.parseInt(request.getParameter("dislike"));
		}

		dislike=dislike+1;
		PreparedStatement pst = null;
		try {
			pst = ConnectionManager.getConnection().prepareStatement("update blog_development.posts set postdislike=? where id=?");
		
			pst.setInt(1, dislike);
			pst.setString(2, post_id);
			pst.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
	}
		response.getWriter().write(String.valueOf(dislike));
	}}
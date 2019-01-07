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

public class PostLikeServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		HttpSession session2 = request.getSession();
		String post_id = session2.getAttribute("id").toString();
		int like;
		if (request.getParameter("like")==null || request.getParameter("like")==""){
			 like=0;
		}else{
			 like=Integer.parseInt(request.getParameter("like"));
		}
		
		like=like+1;
		PreparedStatement pst = null;
		try {
			pst = ConnectionManager.getConnection().prepareStatement("update blog_development.posts set postlike=? where id=?");			
			pst.setInt(1, like);
			pst.setString(2, post_id);
			pst.executeUpdate();
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
		response.getWriter().write(String.valueOf(like));
	}}

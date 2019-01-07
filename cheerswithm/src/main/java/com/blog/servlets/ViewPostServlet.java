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

public class ViewPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String id = null;
	String post = null;

	/**
	 * Process the HTTP doGet request.
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		id = request.getParameter("id");
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		try {
			for (int i = 0; i < PostCrud.getPost(id).size(); i++) {
			
				session.setAttribute("post", PostCrud.getPost(id).iterator().next().getContent()	);
				session.setAttribute("title", PostCrud.getPost(id).iterator().next().getTitle());
				session.setAttribute("author", PostCrud.getPost(id).iterator().next().getName());
				session.setAttribute("created_at", PostCrud.getPost(id).iterator().next().getCreated_at());
				session.setAttribute("category", PostCrud.getPost(id).iterator().next().getCategory());
				if (session != null) {
					RequestDispatcher rd = request.getRequestDispatcher("ViewPost.jsp");
					rd.forward(request,response);
					//rd.include(request, response);
				}
			}
		} catch (SQLException e) {
			out.print("<p style=\"color:red\">ERROR!!</p>");
			RequestDispatcher rd = request.getRequestDispatcher("/ViewPost.jsp");
			rd.include(request, response);
			e.printStackTrace();
		}

	}
}

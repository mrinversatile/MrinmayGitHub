package com.blog.servlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.blog.model.Posts;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.blog.connection.ConnectionManager;

public class BlogSearchEngineServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		res.setContentType("text/html");
		Statement statement1=null;
		Statement statement2=null;
		String searchtext=req.getParameter("search");
		ArrayList<Posts> posts=new ArrayList<Posts>();
		try {
			statement1 = ConnectionManager.getConnection().createStatement();
			statement2 = ConnectionManager.getConnection().createStatement();
			ResultSet rs1=statement1.executeQuery("Select id,name,SUBSTRING(title,1,10) as title,SUBSTRING(content,1,10) as content,created_at,updated_at,category from posts "
					+ "where content like '%"+searchtext+"%' or title like '%"+searchtext+"%' "
							+ "or name like '%"+searchtext+"%' or category like '%"+searchtext+"%' " );
			
			while(rs1.next()){
				Posts po= new Posts();
				po.setId(rs1.getString("id"));
				po.setCategory(rs1.getString("category"));
				po.setContent(rs1.getString("content"));
				po.setName(rs1.getString("name"));
				po.setTitle(rs1.getString("title"));
				po.setCreated_at(rs1.getDate("created_at"));
				po.setUpdated_at(rs1.getDate("updated_at"));
				ResultSet rs2=statement2.executeQuery("Select count(*) as count from comments where post_id="+rs1.getString("id"));
				
			   	while(rs2.next()){
			   		po.setCount(rs2.getString(1));
			   	}
			   	posts.add(po);
			}
				
				req.setAttribute("postlist",posts);
			    RequestDispatcher rd=req.getRequestDispatcher("searchIndex.jsp");
			    rd.forward(req,res);
			    
		} catch (SQLException e) {
			e.getMessage();
			e.printStackTrace();
		}finally {
			if (statement1 != null) {
				try {
					statement1.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (statement2 != null) {
				try {
					statement2.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	
	}

}

package com.blog.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.blog.connection.ConnectionManager;

public class CommentCrud {
	private static Connection connection=null;
	
	
	public static boolean createComment(String commenter,String body,String post_id)throws SQLException {
		boolean status = false;
		connection=ConnectionManager.getConnection();
		PreparedStatement pst = null;
		try {
			pst = connection.prepareStatement("insert into blog_development.comments (commenter, body,post_id,created_at,updated_at)  VALUES (?,?,?,now(),now())");
		
			pst.setString(1, commenter);
			pst.setString(2, body);
			pst.setString(3, post_id);	
			pst.execute();
			status = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (connection != null) {
				connection.close();		
			}
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return status;
		
	}
}

package com.blog.controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.blog.connection.ConnectionManager;
import com.blog.model.Posts;

public class PostCrud {

public static ArrayList<Posts> getPost(String id) throws SQLException {
	
	ArrayList<Posts> postList= new ArrayList<>();
	try{
		Statement statement = ConnectionManager.getConnection().createStatement();
		ResultSet rs=statement.executeQuery("Select * from posts where id="+id);
		while(rs.next()){
			Posts post= new Posts();
			post.setId(id);
			post.setName(rs.getString("name"));
			post.setTitle(rs.getString("title"));
			post.setContent(rs.getString("content"));
			post.setCategory(rs.getString("category"));
			post.setCreated_at(rs.getDate("created_at"));
			post.setUpdated_at(rs.getDate("updated_at"));
			postList.add(post);
			
		}
	}
	catch(SQLException e){
		e.printStackTrace();
	}finally{
	}
	return postList;
	
}

public static boolean createPost(String name,String title,String content,String category)throws SQLException {
	boolean status = false;
	PreparedStatement pst = null;
	try {
		pst = ConnectionManager.getConnection().prepareStatement("insert into blog_development.posts (name, title,content,category,created_at,updated_at)  VALUES (?,?,?,?,now(),now())");
	
		pst.setString(1, name);
		pst.setString(2, title);
		pst.setString(3, content);	
		pst.setString(4, category);
		pst.execute();
		status = true;
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
	return status;
	
}

public static boolean updatePost(String content,String id,String user)throws SQLException {
	boolean status = false;
	PreparedStatement pst = null;
	try {
		pst = ConnectionManager.getConnection().prepareStatement("update blog_development.posts set  content=?,updated_at=now() where id=? and name=?");
	
		pst.setString(1, content);
		pst.setString(2, id);	
		pst.setString(3, user);
		pst.executeUpdate();
		status = true;
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
	
	return status;
}
public static boolean deletePost(String id,String username)throws SQLException {
	boolean status = false;
	PreparedStatement pst = null;
	try {
		pst = ConnectionManager.getConnection().prepareStatement("delete from  blog_development.posts where id=? and name=?");
		pst.setString(1, id);	
		pst.setString(2, username);	
		pst.execute();
		status = true;
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
	
	return status;
}
}

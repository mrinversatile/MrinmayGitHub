package com.amzi.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.amzi.connection.ConnectionManager;

public class RegisterDao {
	
	@SuppressWarnings("static-access")
	public static boolean create(String name, String pass ,String email) {		
		boolean status = false;
		if (!(checkDuplicate(name, email))){
		PreparedStatement pst = null;
		ConnectionManager conn=null;
		conn= new ConnectionManager();
		try {
			pst = conn.getConnection().prepareStatement("insert into login (user, password,email_id)  VALUES (?,?,?)");
		
			pst.setString(1, name);
			pst.setString(2, pass);
			pst.setString(3, email);	
			int i=pst.executeUpdate();
			if(i>0)
			status = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (conn != null) {
					conn.close();		
			}
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		}
		
		return status;
	}
	
	@SuppressWarnings("static-access")
	public static boolean checkDuplicate(String name,String email){
		boolean flag=false;
		PreparedStatement pst = null;
		ConnectionManager conn=null;
		ResultSet rs = null;
		conn= new ConnectionManager();
		try {
			pst = conn.getConnection().prepareStatement("select * from login where (user=? and email_id=?) or user=? or email_id=?");
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, name);
			pst.setString(4, email);
			rs = pst.executeQuery();
			flag = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (conn != null) {
					conn.close();		
			}
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return flag;
	}
}

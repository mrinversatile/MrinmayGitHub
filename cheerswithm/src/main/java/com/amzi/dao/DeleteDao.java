package com.amzi.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amzi.connection.ConnectionManager;

public class DeleteDao {
	@SuppressWarnings("static-access")
	public static boolean delete(String name,String password,String email) {		
		boolean status = false;
		PreparedStatement pst = null;
		ConnectionManager conn=null;
		conn= new ConnectionManager();
		try {
			pst = conn.getConnection().prepareStatement("delete from  login where user=? and password=? and email_id=?");
		
			pst.setString(1, name);
			pst.setString(2, password);
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
		return status;
	}
}

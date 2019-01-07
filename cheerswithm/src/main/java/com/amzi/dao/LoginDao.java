package com.amzi.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amzi.connection.ConnectionManager;

public class LoginDao {
	@SuppressWarnings("static-access")
	public static boolean validate(String name, String pass) {		
		boolean status = false;
		PreparedStatement pst = null;
		ConnectionManager conn=null;
		ResultSet rs = null;
		conn= new ConnectionManager();
		try {
			pst = conn.getConnection().prepareStatement("select * from login where user=? and password=?");
			pst.setString(1, name);
			pst.setString(2, pass);	
			rs = pst.executeQuery();
			status = rs.next();
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
		
		
		return status;
	}
}
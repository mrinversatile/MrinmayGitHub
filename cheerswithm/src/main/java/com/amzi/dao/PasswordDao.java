package com.amzi.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amzi.connection.ConnectionManager;

public class PasswordDao {
	public static boolean passwordUserValidate(String name, String email) {
		boolean status = false;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = ConnectionManager.getConnection().prepareStatement("select * from login where user=? and email_id=?");
			pst.setString(1, name);
			pst.setString(2, email);	
			if ( pst.execute()){
				status=true;
			}
				
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
	public static String forgotPassword(String name, String email) {
		String password=null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		if(passwordUserValidate(name,  email)){
			try {
				pst = ConnectionManager.getConnection().prepareStatement("select password from login where user=? and email_id=?");
				pst.setString(1, name);
				pst.setString(2, email);	
			    rs = pst.executeQuery();
			    if(rs.next()){
			    	password=rs.getString("password");
			    }
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
				if (rs != null) {
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}

		
		
		return password;
	}
	public static boolean changePassword(String name, String oldpassword, String newpassword) {
		boolean status = false;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = ConnectionManager.getConnection().prepareStatement("update login set password=? where user=? and password=?");
			pst.setString(1, newpassword);
			pst.setString(2, name);	
			pst.setString(3, oldpassword);	
			if ( pst.executeUpdate()>0){
				status=true;
			}
				
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

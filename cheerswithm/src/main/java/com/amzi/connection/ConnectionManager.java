package com.amzi.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	static String url = "jdbc:mysql://127.10.140.130:3306/";
	static String dbName = "blog_development";
	static String driver = "com.mysql.jdbc.Driver";
	static String userName = "adminTu7eE3C";
	static String password = "6l-a3zAc3w5m";
	static Connection conn = null;
    public static Connection getConnection() {
		try {
			Class.forName(driver).newInstance();
            
            	conn =DriverManager
    					.getConnection(url + dbName, userName, password);
            
        } catch (Exception ex) {
        	ex.printStackTrace();
            System.out.println("Driver not found."+ ex.getMessage()); 
        }
        return conn;
    }
    public static void close() {
    	if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
    }
}
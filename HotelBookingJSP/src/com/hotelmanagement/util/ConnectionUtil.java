package com.hotelmanagement.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionUtil {
	public static Connection initializeDatabase() 
	        throws SQLException, ClassNotFoundException 
	    { 
	        // Initialize all the information regarding 
	        // Database Connection 
	        String dbDriver = "com.mysql.cj.jdbc.Driver"; 
	        String dbURL = "jdbc:mysql:// localhost:3306/hotel"; 
	        
	        // Database name to access 
	        String dbName = "hotel"; 
	        String dbUsername = "root"; 
	        String dbPassword = "root"; 
	  
	        Class.forName(dbDriver); 
	        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
	        Connection con = DriverManager.getConnection(dbURL, dbUsername, dbPassword) ;
	        return con; 
	    } 
}

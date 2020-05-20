package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {

	public DB() {
		// TODO Auto-generated constructor stub
	}
	static String un="root";
	static String pass="Shivam";
	static String url="jdbc:mysql://localhost:3306/project";
	public static Connection getConnection()
	{
		Connection con=null;
		try{
			con=DriverManager.getConnection(url,un,pass);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return con;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

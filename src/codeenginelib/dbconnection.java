package codeenginelib;

import java.sql.DriverManager;
import java.sql.SQLException;

public class dbconnection {

	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("driver found");
		}
		catch (ClassNotFoundException e)
		{
			System.out.println("Driver not found:"+e);
		}
		String url="jdbc:mysql://localhost/codeenginedb";
		String user="root";
		String password="vidhya";
		
		java.sql.Connection connection = null;
		
		try
		{
			connection=DriverManager.getConnection(url,user,password);
			System.out.println("Connected Successfully");
		}
		 catch(SQLException e)
		{
			System.out.println("Something went wrong in the connection string");
		}
		
		
	}

}


package com.iiitb.SE.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DatabaseConnection {
	
	private static final String driverName="com.mysql.jdbc.Driver";
	public static String schemaName;
	private static final String username="root";
	private static final String password="gp";
	Connection connection = null;
	public static final String URL = "jdbc:mysql://localhost:3306/enterprise";
	public  static Connection getConnection()
	{
		Connection connection = null;
		try
		{
			Class.forName(driverName);
			connection=	DriverManager.getConnection(URL,username,password);

		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return connection;
	}
	public ArrayList<String> isValidated(String uId, String uPassword)
	{
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		ArrayList<String> roleUser = new ArrayList<String>();
		 try {
	    	 	String Query = "select user_id , role_id from master where user_id = ? and password = ?";
	    	 	connection = getConnection();
	    	 	preparedStatement = connection.prepareStatement(Query);
	    	 	preparedStatement.setString(1,uId);
	    		preparedStatement.setString(2, uPassword);
	    	 	rs = preparedStatement.executeQuery();	    	 	
	    	 	while(rs.next())
	    	 	{
	    	 		roleUser.add(rs.getString(1));
	    	 		roleUser.add(rs.getString(2));
	    	 	}
		 } 	
    	 catch (SQLException e)
	 	{		
	 		System.out.println(e.getMessage());
	 		
	 	}
		    finally {
						try {
								if (preparedStatement != null)
								{
									preparedStatement.close();
								}
								if (connection != null) 
								{
										connection.close();
									}
							}
							catch (SQLException e) 
							{
								System.out.println(e.getMessage());
								
							}
					}
		
		return roleUser;
	}
	public boolean isValidUserId(String userId) {
		// TODO Auto-generated method stub
		//System.out.println(userId);
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		String res = null;
		 try {
	    	 	String Query = "select first_name from user_details where user_id = ?";
	    	 	connection = getConnection();
	    	 	preparedStatement = connection.prepareStatement(Query);
	    	 	preparedStatement.setString(1, userId);
	    	 	rs = preparedStatement.executeQuery();	    	 	
	    	 	while(rs.next())
	    	 	{
	    	 		res = rs.getString(1);
	    	 	}
		 } 	
    	 catch (SQLException e)
	 	{		
	 		System.out.println(e.getMessage());
	 		
	 	}
		    finally {
						try {
								if (preparedStatement != null)
								{
									preparedStatement.close();
								}
								if (connection != null) 
								{
										connection.close();
									}
							}
							catch (SQLException e) 
							{
								System.out.println(e.getMessage());
								
							}
					}
		if(res != null)
			return false;
		else
			return true;
	}
	public void createAccount(String fname, String lname, String userid, String email, String pwd, int roleId) {
		// TODO Auto-generated method stub
		System.out.println(fname+" "+lname+" "+ email);
		PreparedStatement preparedStatement = null;
		 try {
	    	 	String Query = "insert into user_details values(?,?,?,?,?,?)";
	    	 	connection = getConnection();
	    	 	preparedStatement = connection.prepareStatement(Query);
	    	 	preparedStatement.setString(1, fname);
	    	 	preparedStatement.setString(2, lname);
	    	 	preparedStatement.setString(3, userid);
	    	 	preparedStatement.setString(4, email);
	    	 	preparedStatement.setString(5, pwd);
	    	 	preparedStatement.setInt(6, roleId);
	    	 	preparedStatement.execute();	    	 	
		 } 	
    	 catch (SQLException e)
	 	{		
	 		System.out.println(e.getMessage());
	 		
	 	}
		    finally {
						try {
								if (preparedStatement != null)
								{
									preparedStatement.close();
								}
								if (connection != null) 
								{
										connection.close();
									}
							}
							catch (SQLException e) 
							{
								System.out.println(e.getMessage());
								
							}
					}
		 
	}
	public int getRoleId(String roleType) {
		// TODO Auto-generated method stub
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		int res = -1;
		 try {
	    	 	String Query = "select role_id from roles where role_type = ?";
	    	 	connection = getConnection();
	    	 	preparedStatement = connection.prepareStatement(Query);
	    	 	preparedStatement.setString(1, roleType);
	    	 	rs = preparedStatement.executeQuery();	    	 	
	    	 	while(rs.next())
	    	 	{
	    	 		res = rs.getInt(1);
	    	 	}
		 } 	
    	 catch (SQLException e)
	 	{		
	 		System.out.println(e.getMessage());
	 		
	 	}
		    finally {
						try {
								if (preparedStatement != null)
								{
									preparedStatement.close();
								}
								if (connection != null) 
								{
										connection.close();
									}
							}
							catch (SQLException e) 
							{
								System.out.println(e.getMessage());
								
							}
					}
		return res;
	}

}

package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Connection.Connect;

public class LoginDAO {
	static Connection con;
	static Statement st;
	static ResultSet rs;
	static public int user_id;
	
	public LoginDAO(){
		con = Connect.getConnection();
		
		try {
			st=con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean checkCredential(String email,String password){
		boolean flag=false;
		
		try {
			rs=st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");
			
			if(rs.next()){
				user_id=rs.getInt("id");
				flag=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return flag;	
	}
}
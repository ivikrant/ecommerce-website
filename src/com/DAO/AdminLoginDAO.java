package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import com.Connection.Connect;

public class AdminLoginDAO {
	static Connection con;
	static Statement st;
	static ResultSet rs;
	static public int id;
	public int totalAdmins;
	public int totalUsers;
	
	public AdminLoginDAO(){
		con = Connect.getConnection();
		
		try {
			st=con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean checkCredential(String admin_name,String admin_password){
		boolean flag=false;
		
		try {
			
			rs=st.executeQuery("select * from admin where name='"+admin_name+"' and password='"+admin_password+"'");
			
			if(rs.next()){
				id=rs.getInt("id");
				flag=true;
				rs=st.executeQuery("select count(*) from admin");
				if(rs.next()){
					totalAdmins=rs.getInt(1);
				}
				rs=st.executeQuery("select count(*) from user");
				if(rs.next()){
					totalUsers=rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return flag;
		
	}
	
}

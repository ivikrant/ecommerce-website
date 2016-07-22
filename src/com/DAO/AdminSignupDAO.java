package com.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.AdminSignupBean;
import com.Connection.Connect;

public class AdminSignupDAO {
	Connection con;
	Statement st;
	java.sql.ResultSet rs;
	
	public AdminSignupDAO()
	{
		con=Connect.getConnection();
	}
	public boolean insertAdmin(String name,String email,String password)
	{
		boolean flag=false;
		String sql="insert into admin values(default,'"+name+"','"+email+"','"+password+"')";
		try {
			System.out.println(sql);
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			if(i==1){
				System.out.println("Data Inserted");
				flag=true;
			}
			else
				System.out.println("Data not inserted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	} 
	
	public void deleteAdmin(String id){
		
		String sql="delete from admin where id='"+id+"'";
		
		try {
			st=con.createStatement();
			int i = st.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean updateAdmin(String id,String name,String email,String password){
		boolean flag=false;
		String sql="update admin set name='"+name+"', email='"+email+"',password='"+password+"' where id='"+id+"'";
		
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			
			flag=(i==1)?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}
	
	public AdminSignupBean getAdminDetail(String id){
		AdminSignupBean adminSignupBean = new AdminSignupBean();
		String sql="select * from admin where id='"+id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){
				adminSignupBean.setId(rs.getInt("id"));
				adminSignupBean.setName(rs.getString("name"));
				adminSignupBean.setEmail(rs.getString("email"));
				adminSignupBean.setPassword(rs.getString("password"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return adminSignupBean;
	}
	
	public ArrayList<AdminSignupBean> showUsers(){
		
		ArrayList<AdminSignupBean> list_users = new ArrayList<AdminSignupBean>();
		String sql="select * from admin";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				AdminSignupBean adminSignupBean=new AdminSignupBean();
				adminSignupBean.setId(rs.getInt("id"));
				adminSignupBean.setName(rs.getString("name"));
				adminSignupBean.setEmail(rs.getString("email"));
				adminSignupBean.setPassword(rs.getString("password"));
				list_users.add(adminSignupBean);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list_users;
	}
}
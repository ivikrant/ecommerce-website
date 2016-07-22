package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.SignupBean;
import com.Connection.Connect;

public class SignupUserDAO {
	Connection con;
	Statement st;
	ResultSet rs;
	
	public SignupUserDAO()
	{
		con=Connect.getConnection();
	}
	public boolean insertUser(String name,String email,String password)
	{
		boolean flag=false;
		String sql="insert into user values(default,'"+name+"','"+email+"','"+password+"')";
		try {
			System.out.println(sql);
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			if(i==1)
				flag=true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	} 
	
	public void deleteUser(String id){
		boolean flag=false;
		
		String sql="delete from userdata where id='"+id+"' ";
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			flag=(i==1)?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	public SignupBean getUserDetails(String id){
		boolean flag=false;
		SignupBean sb = new SignupBean();
		String sql="select *  from userdata where id='"+id+"' ";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){
				sb.setId(rs.getInt(1));
				sb.setName(rs.getString(2));
				sb.setEmail(rs.getString(3));
				sb.setPassword(rs.getString(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return sb;
	}
	
	public ArrayList<SignupBean> showUsers(){
		
		ArrayList<SignupBean> list_users = new ArrayList<SignupBean>();
		String sql="select * from user";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				SignupBean signupBean=new SignupBean();
				signupBean.setId(rs.getInt("id"));
				signupBean.setName(rs.getString("name"));
				signupBean.setEmail(rs.getString("email"));
				signupBean.setPassword(rs.getString("password"));
				list_users.add(signupBean);
				System.out.println("Reg id : "+rs.getInt("id"));
				System.out.println("Name : "+rs.getString("name"));
				System.out.println("Email : "+rs.getString("email"));
				System.out.println("Password : "+rs.getString("password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list_users;
	}
}
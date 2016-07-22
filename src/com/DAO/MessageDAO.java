package com.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.MessageBean;
import com.Connection.Connect;

public class MessageDAO {

	Connection con;
	Statement st;
	java.sql.ResultSet rs;
	
	public MessageDAO()
	{
		con=Connect.getConnection();
	}
	public boolean insertMessage(String name,String email,String subject,String mes)
	{
		boolean flag=false;
		String sql="insert into message values(default,'"+name+"','"+email+"','"+subject+"','"+mes+"')";
		try {
			System.out.println(sql);
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			if(i==1){
				flag=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	} 
	
	public void deleteMessage(String mes_id){
		
		String sql="delete from message where mes_id='"+mes_id+"'";
		
		try {
			st=con.createStatement();
			int i = st.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public MessageBean getMessageDetail(String mes_id){
		MessageBean messageBean = new MessageBean();
		String sql="select * from message where mes_id='"+mes_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){
				messageBean.setMes_id(rs.getInt("mes_id"));
				messageBean.setName(rs.getString("name"));
				messageBean.setEmail(rs.getString("email"));
				messageBean.setSubject(rs.getString("subject"));
				messageBean.setMes(rs.getString("mes"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return messageBean;
	}
	
	public ArrayList<MessageBean> showMessages(){
		
		ArrayList<MessageBean> list_users = new ArrayList<MessageBean>();
		String sql="select * from message";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				MessageBean messageBean=new MessageBean();
				messageBean.setMes_id(rs.getInt("mes_id"));
				messageBean.setName(rs.getString("name"));
				messageBean.setEmail(rs.getString("email"));
				messageBean.setSubject(rs.getString("subject"));
				messageBean.setMes(rs.getString("mes"));
				list_users.add(messageBean);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list_users;
	}
	
}
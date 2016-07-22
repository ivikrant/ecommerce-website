package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.CategoryBean;
import com.Connection.Connect;

public class CategoryDAO {
	
	Connection con;
	Statement st;
	ResultSet rs;
	
	public CategoryDAO(){
		con = Connect.getConnection();
	}
	
	public boolean insertCategory(String categoryName,String categoryDescription,String imgURL){
		
		boolean flag=false;
		String sql = "insert into category values(default , '"+categoryName+"','"+categoryDescription+"','"+imgURL+"')";
		
		try {
			st = con.createStatement();
			int i = st.executeUpdate(sql);
			
			flag = (i==1)?true:false;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
		return flag;
	}
	
	public ResultSet fetchCategory(){
		
		String sql="select * from category";
		
		try {
			st=con.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public void deleteCategory(String category_id){
		
		String sql="delete from category where category_id='"+category_id+"'";
		
		try {
			st=con.createStatement();
			int i = st.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean updateCategory(String category_id,String category_name,String categoryDescription,String imgURL){
		boolean flag=false;
		String sql="update category set name='"+category_name+"', email='"+categoryDescription+"', imgURL='"+imgURL+"' where category_id='"+category_id+"'";
		
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
	
	public CategoryBean getCategoryDetail(String category_id){
		CategoryBean categoryBean = new CategoryBean();
		String sql="select * from category where category_id='"+category_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){
				categoryBean.setCategory_Id(rs.getInt("category_Id"));
				categoryBean.setCategoryName(rs.getString("categoryName"));
				categoryBean.setCategoryDescription(rs.getString("categoryDescription"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return categoryBean;
	}
	
	public void viewCategory(String category_id){
		boolean flag=false;
		String sql=" where category_id='"+category_id+"'";
		
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			
			flag=(i==1)?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<CategoryBean> showCategory(){
		
		ArrayList<CategoryBean> list_users = new ArrayList<CategoryBean>();
		String sql="select * from category";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				CategoryBean categoryBean=new CategoryBean();
				categoryBean.setCategory_Id(rs.getInt("category_Id"));
				categoryBean.setCategoryName(rs.getString("categoryName"));
				categoryBean.setCategoryDescription(rs.getString("categoryDescription"));
				categoryBean.setImgURL(rs.getString("imgURL"));
				
				list_users.add(categoryBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list_users;
	}
}

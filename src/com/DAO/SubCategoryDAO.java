package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.CategoryBean;
import com.Bean.SubCategoryBean;
import com.Connection.Connect;

public class SubCategoryDAO {
	
	Connection con;
	Statement st;
	ResultSet rs;
	
	public SubCategoryDAO(){
		con = Connect.getConnection();
	}
	
	public boolean insertSubCategory(String category_id, String subCategoryName,String subCategoryDescription,String file){
		
		boolean flag=false;
		int id=0;
		String sql = "insert into subcategory values(default , '"+category_id+"' ,'"+subCategoryName+"','"+subCategoryDescription+"','"+file+"')";
		
		try {
			st = con.createStatement();
			int i = st.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
			
			rs = st.getGeneratedKeys();
			
			if(rs.next()){
				id=rs.getInt(1);
			}
			
			flag = (i==1)?true:false;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
		return flag;
	}
	
	public ResultSet allSubCategory(String category_id){
		
		String sql="select * from subCategory where category_id='"+category_id+"'";
		
		try {
			st=con.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public ResultSet fetchSubCategory(String subCategory_id){
		
		String sql="select * from subCategory where subcategory_id='"+subCategory_id+"'";
		
		try {
			st=con.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public void deleteSubCategory(String subCategory_id){
		
		String sql="delete from subcategory where subcategory_id='"+subCategory_id+"'";
		
		try {
			st=con.createStatement();
			int i = st.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean updateSubCategory(String subCategory_id,String name,String description,String file){
		boolean flag=false;
		String sql="update subcategory set name='"+name+"', description='"+description+"',imgURL='"+file+"' where subCategory_id='"+subCategory_id+"'";
		
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
	
	public SubCategoryBean getSubCategoryDetail(String subCategory_id){
		SubCategoryBean subCategoryBean = new SubCategoryBean();
		String sql="select * from subcategory where subcategory_id='"+subCategory_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){
				subCategoryBean.setSubcategory_id(rs.getInt("subcategory_Id"));
				subCategoryBean.setName(rs.getString("name"));
				subCategoryBean.setDescription(rs.getString("description"));
				subCategoryBean.setCategory_id(rs.getInt("category_Id"));
				subCategoryBean.setImgURL(rs.getString("imgURL"));
				
				CategoryDAO categoryDAO = new CategoryDAO();
				CategoryBean categoryBean = categoryDAO.getCategoryDetail(Integer.toString(rs.getInt("category_id")));
				
				subCategoryBean.setCategory(categoryBean.getCategoryName());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return subCategoryBean;
	}
	
	public void viewSubCategory(String subCategory_id){
		boolean flag=false;
		String sql="select * from subcategory where subCategory_id='"+subCategory_id+"'";
		
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			
			flag=(i==1)?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<SubCategoryBean> showSubCategory(){
		
		ArrayList<SubCategoryBean> list_users = new ArrayList<SubCategoryBean>();
		String sql="select * from subCategory";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				SubCategoryBean subCategoryBean=new SubCategoryBean();
				subCategoryBean.setSubcategory_id(rs.getInt("subCategory_Id"));
				subCategoryBean.setCategory_id(rs.getInt("category_id"));
				subCategoryBean.setName(rs.getString("name"));
				subCategoryBean.setDescription(rs.getString("description"));
				subCategoryBean.setImgURL(rs.getString("imgURL"));
				
				CategoryDAO categoryDAO = new CategoryDAO();
				CategoryBean categoryBean = categoryDAO.getCategoryDetail(Integer.toString(rs.getInt("category_id")));
				
				subCategoryBean.setCategory(categoryBean.getCategoryName());
				
				list_users.add(subCategoryBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list_users;
	}
	
	public ArrayList<SubCategoryBean> searchSubCategory(String query){
		ArrayList<SubCategoryBean> subcat_list = new ArrayList<SubCategoryBean>();
		
		String sql="select * from subcategory where UPPER(name) like UPPER('%"+query+"%')";
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()){
				SubCategoryBean subCategoryBean = new SubCategoryBean();
				subCategoryBean.setSubcategory_id(rs.getInt("subcategory_id"));
				subCategoryBean.setName(rs.getString("name"));
				subCategoryBean.setCategory_id(rs.getInt("category_id"));
				subCategoryBean.setDescription(rs.getString("description"));
				subCategoryBean.setImgURL(rs.getString("imgURL"));
				
				subcat_list.add(subCategoryBean);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return subcat_list;
	}	
}
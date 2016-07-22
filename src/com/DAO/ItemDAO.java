package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.CategoryBean;
import com.Bean.ItemBean;
import com.Bean.SubCategoryBean;
import com.Connection.Connect;

public class ItemDAO 
{
		Connection con;
		Statement st;
		ResultSet rs;
		
		public ItemDAO(){
			con = Connect.getConnection();
		}
		
		public boolean insertItem(String category_id,String subCategory_id, String name,String description,String price,String imgURL,String imgURL1,String imgURL2){
			
			boolean flag=false;
			int id=0;
			String sql = "insert into item values(default , '"+category_id+"','"+subCategory_id+"' ,'"+name+"','"+description+"','"+price+"','"+imgURL+"', '"+imgURL1+"', '"+imgURL2+"')";
			
			try {
				st = con.createStatement();
				int i = st.executeUpdate(sql);
				
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
		
		public ResultSet fetchItem(String item_id){
			
			String sql="select * from item where item_id='"+item_id+"'";
			
			try {
				st=con.createStatement();
				rs = st.executeQuery(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		
		public void deleteItem(String item_id){
			
			String sql="delete from item where item_id='"+item_id+"'";
			
			try {
				st=con.createStatement();
				int i = st.executeUpdate(sql);
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public boolean updateItem(String item_id,String name,String description,String price,String imgURL,String imgURL1,String imgURL2){
			boolean flag=false;
			String sql="update item set name='"+name+"', description='"+description+"',price='"+price+"' ,imgURL='"+imgURL+"', imgURL1='"+imgURL1+"', imgURL2='"+imgURL2+"' where item_id='"+item_id+"'";
			
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
		
		public ItemBean getItemDetail(String item_id){
			ItemBean itemBean = new ItemBean();
			String sql="select * from item where item_id='"+item_id+"'";
			
			try {
				st=con.createStatement();
				rs=st.executeQuery(sql);
				
				while(rs.next()){
					itemBean.setCategory_id(rs.getInt("category_id"));
					itemBean.setSubcategory_id(rs.getInt("subcategory_id"));
					itemBean.setName(rs.getString("name"));
					itemBean.setDescription(rs.getString("description"));
					itemBean.setPrice(rs.getString("price"));
					itemBean.setImgURL(rs.getString("imgURL"));
					itemBean.setImgURL1(rs.getString("imgURL1"));
					itemBean.setImgURL2(rs.getString("imgURL2"));
					itemBean.setItem_id(rs.getInt("item_id"));
					
					CategoryDAO categoryDAO = new CategoryDAO();
					CategoryBean categoryBean = categoryDAO.getCategoryDetail(rs.getString("category_id"));					
					SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
					SubCategoryBean subCategoryBean = subCategoryDAO.getSubCategoryDetail(rs.getString("subcategory_id"));
					itemBean.setCategory(categoryBean.getCategoryName());
					itemBean.setSubcategory(subCategoryBean.getName());
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return itemBean;
		}
		
		public void viewItem(String item_id){
			boolean flag=false;
			String sql="select * from item where item_id='"+item_id+"'";
			
			try {
				st=con.createStatement();
				int i=st.executeUpdate(sql);
				
				flag=(i==1)?true:false;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		public ArrayList<ItemBean> showItem(){
			
			ArrayList<ItemBean> list_users = new ArrayList<ItemBean>();
			String sql="select * from item";
			
			try {
				st=con.createStatement();
				rs=st.executeQuery(sql);
				while(rs.next()){
					ItemBean itemBean=new ItemBean();
					itemBean.setSubcategory_id(rs.getInt("subCategory_id"));
					itemBean.setCategory_id(rs.getInt("category_id"));
					itemBean.setName(rs.getString("name"));
					itemBean.setDescription(rs.getString("description"));
					itemBean.setPrice(rs.getString("price"));
					itemBean.setImgURL(rs.getString("imgURL"));
					itemBean.setImgURL1(rs.getString("imgURL1"));
					itemBean.setImgURL2(rs.getString("imgURL2"));
					itemBean.setItem_id(rs.getInt("item_id"));
					
					CategoryDAO categoryDAO = new CategoryDAO();
					CategoryBean categoryBean = categoryDAO.getCategoryDetail(rs.getString("category_id"));
					SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
					SubCategoryBean subCategoryBean = subCategoryDAO.getSubCategoryDetail(rs.getString("subcategory_id"));
					itemBean.setCategory(categoryBean.getCategoryName());
					itemBean.setSubcategory(subCategoryBean.getName());
					
					list_users.add(itemBean);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list_users;
		}
		
		public ArrayList<ItemBean> showCollectionItem(String category_id){
			
			ArrayList<ItemBean> list_users = new ArrayList<ItemBean>();
			String sql="select * from item where category_id='"+category_id+"'";
			
			try {
				st=con.createStatement();
				rs=st.executeQuery(sql);
				while(rs.next()){
					ItemBean itemBean=new ItemBean();
					itemBean.setSubcategory_id(rs.getInt("subCategory_id"));
					itemBean.setCategory_id(rs.getInt("category_id"));
					itemBean.setName(rs.getString("name"));
					itemBean.setDescription(rs.getString("description"));
					itemBean.setPrice(rs.getString("price"));
					itemBean.setImgURL(rs.getString("imgURL"));
					itemBean.setImgURL1(rs.getString("imgURL1"));
					itemBean.setImgURL2(rs.getString("imgURL2"));
					itemBean.setItem_id(rs.getInt("item_id"));
					
					CategoryDAO categoryDAO = new CategoryDAO();
					CategoryBean categoryBean = categoryDAO.getCategoryDetail(Integer.toString(rs.getInt("category_id")));
					SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
					SubCategoryBean subCategoryBean = subCategoryDAO.getSubCategoryDetail(Integer.toString(rs.getInt("subcategory_id")));
					itemBean.setCategory(categoryBean.getCategoryName());
					itemBean.setSubcategory(subCategoryBean.getName());
					
					list_users.add(itemBean);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list_users;
		}
		
		public ArrayList<ItemBean> showSubCollectionItem(String category_id,String subcategory_id){
			
			ArrayList<ItemBean> list_users = new ArrayList<ItemBean>();
			String sql="select * from item where category_id='"+category_id+"' and subcategory_id='"+subcategory_id+"'";
			
			try {
				st=con.createStatement();
				rs=st.executeQuery(sql);
				while(rs.next()){
					ItemBean itemBean=new ItemBean();
					itemBean.setSubcategory_id(rs.getInt("subCategory_id"));
					itemBean.setCategory_id(rs.getInt("category_id"));
					itemBean.setName(rs.getString("name"));
					itemBean.setDescription(rs.getString("description"));
					itemBean.setPrice(rs.getString("price"));
					itemBean.setImgURL(rs.getString("imgURL"));
					itemBean.setImgURL1(rs.getString("imgURL1"));
					itemBean.setImgURL2(rs.getString("imgURL2"));
					itemBean.setItem_id(rs.getInt("item_id"));
					
					CategoryDAO categoryDAO = new CategoryDAO();
					CategoryBean categoryBean = categoryDAO.getCategoryDetail(Integer.toString(rs.getInt("category_id")));
					SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
					SubCategoryBean subCategoryBean = subCategoryDAO.getSubCategoryDetail(Integer.toString(rs.getInt("subcategory_id")));
					itemBean.setCategory(categoryBean.getCategoryName());
					itemBean.setSubcategory(subCategoryBean.getName());
					
					list_users.add(itemBean);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list_users;
		}
		public ArrayList<ItemBean> searchItem(String query){
			ArrayList<ItemBean> subcat_list = new ArrayList<ItemBean>();
			
			String sql="select * from item where UPPER(name) like UPPER('%"+query+"%')";
			
			try {
				st = con.createStatement();
				rs = st.executeQuery(sql);
				
				while(rs.next()){
					ItemBean itemBean = new ItemBean();
					itemBean.setSubcategory_id(rs.getInt("subcategory_id"));
					itemBean.setName(rs.getString("name"));
					itemBean.setCategory_id(rs.getInt("category_id"));
					itemBean.setDescription(rs.getString("description"));
					itemBean.setPrice(rs.getString("price"));
					itemBean.setImgURL(rs.getString("imgURL"));
					itemBean.setImgURL1(rs.getString("imgURL1"));
					itemBean.setImgURL2(rs.getString("imgURL2"));
					itemBean.setItem_id(rs.getInt("item_id"));
					
					CategoryDAO categoryDAO = new CategoryDAO();
					CategoryBean categoryBean = categoryDAO.getCategoryDetail(Integer.toString(rs.getInt("category_id")));
					SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
					SubCategoryBean subCategoryBean = subCategoryDAO.getSubCategoryDetail(Integer.toString(rs.getInt("subcategory_id")));
					itemBean.setCategory(categoryBean.getCategoryName());
					itemBean.setSubcategory(subCategoryBean.getName());
					
					subcat_list.add(itemBean);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return subcat_list;
		}	
}
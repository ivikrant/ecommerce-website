package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.IndexPicsBean;
import com.Connection.Connect;

public class IndexPicsDAO {
		
		Connection con;
		Statement st;
		ResultSet rs;
		
		public IndexPicsDAO(){
			con = Connect.getConnection();
		}
		
		public boolean insertIndexPics(String heading,String subHeading,String description,String imgURL){
			
			boolean flag=false;
			int id=0;
			String sql = "insert into bigimage values(default,'"+heading+"','"+subHeading+"','"+description+"','"+imgURL+"')";
			
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
		
		public ResultSet fetchIndexPics(String img_id){
			
			String sql="select * from bigimage where img_id='"+img_id+"'";
			
			try {
				st=con.createStatement();
				rs = st.executeQuery(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		
		public void deleteIndexPics(String img_id){
			
			String sql="delete from bigimage where img_id='"+img_id+"'";
			
			try {
				st=con.createStatement();
				int i = st.executeUpdate(sql);
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public boolean updateIndexPics(String img_id,String heading,String subHeading,String description,String imgURL){
			boolean flag=false;
			String sql="update bigimage set filename='"+imgURL+"', description='"+description+"', heading='"+heading+"',subheading='"+subHeading+"' where img_id='"+img_id+"'";
			
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
		
		/*
		
		public IndexPicsBean getIndexPicsDetail(String img_id){
			IndexPicsBean indexPicsBean = new IndexPicsBean();
			String sql="select * from bigimage where img_id='"+img_id+"'";
			
			try {
				st=con.createStatement();
				rs=st.executeQuery(sql);
				
				while(rs.next()){
					indexPicsBean.setreg_id(rs.getInt("subCategory_Id"));
					indexPicsBean.setName(rs.getString("name"));
					indexPicsBean.setDescription(rs.getString("description"));
					indexPicsBean.setCategory_id(rs.getInt("category_Id"));
					indexPicsBean.setWebLink(rs.getString("webLink"));
					indexPicsBean.setAddress(rs.getString("address"));
					indexPicsBean.setFile(rs.getString("file"));
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return indexPicsBean;
		}

		*/
		
		public ArrayList<IndexPicsBean> showIndexPics(){
			
			ArrayList<IndexPicsBean> list_users = new ArrayList<IndexPicsBean>();
			String sql="select * from bigimage";
			
			try {
				st=con.createStatement();
				rs=st.executeQuery(sql);
				while(rs.next()){
					IndexPicsBean indexPicsBean=new IndexPicsBean();
					indexPicsBean.setImg_id(rs.getInt("img_id"));
					indexPicsBean.setImgURL(rs.getString("imgURL"));
					indexPicsBean.setHeading(rs.getString("heading"));
					indexPicsBean.setSubheading(rs.getString("subheading"));
					indexPicsBean.setDescription(rs.getString("description"));
					
					list_users.add(indexPicsBean);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list_users;
		}

		/*
		 
		 
		public ArrayList<IndexPicsBean> searchIndexPics(String query){
			ArrayList<IndexPicsBean> subcat_list = new ArrayList<IndexPicsBean>();
			
			String sql="select * from subcategory where UPPER(name) like UPPER('%"+query+"%')";
			
			try {
				st = con.createStatement();
				rs = st.executeQuery(sql);
				
				while(rs.next()){
					IndexPicsBean indexPicsBean = new IndexPicsBean();
					indexPicsBean.setreg_id(rs.getInt("img_id"));
					indexPicsBean.setName(rs.getString("name"));
					indexPicsBean.setAddress(rs.getString("address"));
					indexPicsBean.setCategory_id(rs.getInt("category_id"));
					indexPicsBean.setDescription(rs.getString("description"));
					indexPicsBean.setFile(rs.getString("file"));
					indexPicsBean.setWebLink(rs.getString("webLink"));
					
					subcat_list.add(indexPicsBean);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return subcat_list;
		}
		
			*/
}

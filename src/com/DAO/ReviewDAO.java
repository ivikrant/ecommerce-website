package com.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.ReviewBean;
import com.Connection.Connect;

public class ReviewDAO {

	Connection con;
	Statement st;
	java.sql.ResultSet rs;
	
	public ReviewDAO()
	{
		con=Connect.getConnection();
	}
	public boolean insertReview(String item_id,String name,String email,String title,String review)
	{
		boolean flag=false;
		String sql="insert into review values(default,'"+item_id+"','"+name+"','"+email+"','"+title+"','"+review+"',now(),now())";
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
	
	public void deleteReview(String review_id){
		
		String sql="delete from review where review_id='"+review_id+"'";
		
		try {
			st=con.createStatement();
			int i = st.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean updateReview(String review_id,String name,String email,String review){
		boolean flag=false;
		String sql="update review set review='"+review+"' where review_id='"+review_id+"'";
		
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
	
	public ReviewBean getReviewDetail(String review_id){
		ReviewBean reviewBean = new ReviewBean();
		String sql="select * from review where review_id='"+review_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){
				reviewBean.setReview_id(rs.getInt("review_id"));
				reviewBean.setItem_id(rs.getInt("item_id"));
				reviewBean.setName(rs.getString("name"));
				reviewBean.setEmail(rs.getString("email"));
				reviewBean.setTitle(rs.getString("title"));
				reviewBean.setReview(rs.getString("review"));
				reviewBean.setDate(rs.getDate("date"));
				reviewBean.setTime(rs.getTime("time"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return reviewBean;
	}
	
	public ArrayList<ReviewBean> showReviews(){
		
		ArrayList<ReviewBean> list_users = new ArrayList<ReviewBean>();
		String sql="select * from review";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				ReviewBean reviewBean=new ReviewBean();
				reviewBean.setReview_id(rs.getInt("review_id"));
				reviewBean.setItem_id(rs.getInt("item_id"));
				reviewBean.setName(rs.getString("name"));
				reviewBean.setEmail(rs.getString("email"));
				reviewBean.setTitle(rs.getString("title"));
				reviewBean.setReview(rs.getString("review"));
				reviewBean.setDate(rs.getDate("date"));
				reviewBean.setTime(rs.getTime("time"));
				list_users.add(reviewBean);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list_users;
	}
	
	public ArrayList<ReviewBean> getItemReviews(String itemId){
		
		ArrayList<ReviewBean> list_users = new ArrayList<ReviewBean>();
		String sql="select * from review where item_id='"+itemId+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				ReviewBean reviewBean=new ReviewBean();
				reviewBean.setReview_id(rs.getInt("review_id"));
				reviewBean.setItem_id(rs.getInt("item_id"));
				reviewBean.setName(rs.getString("name"));
				reviewBean.setEmail(rs.getString("email"));
				reviewBean.setTitle(rs.getString("title"));
				reviewBean.setReview(rs.getString("review"));
				reviewBean.setDate(rs.getDate("date"));
				reviewBean.setTime(rs.getTime("time"));
				list_users.add(reviewBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list_users;
	}
}
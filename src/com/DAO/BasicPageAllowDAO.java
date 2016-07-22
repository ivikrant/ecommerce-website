package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.CategoryBean;
import com.Bean.PageAllowBean;
import com.Bean.SubCategoryBean;
import com.Connection.Connect;

public class BasicPageAllowDAO
{
		Connection con;
		Statement st;
		ResultSet rs;
		
		public BasicPageAllowDAO(){
			con = Connect.getConnection();
		}
		
		public boolean insertPageItem(String category_id,String subCategory_id, String name,String description,String price,String imgURL,String imgURL1,String imgURL2){
			
			boolean flag=false;
			int id=0;
			String sql = "insert into masterpageallow values(default , '"+category_id+"','"+subCategory_id+"' ,'"+name+"','"+description+"','"+price+"','"+imgURL+"', '"+imgURL1+"', '"+imgURL2+"')";
		
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
	
	public ResultSet fetchPageItem(String item_id){
		
		String sql="select * from masterpageallow where item_id='"+item_id+"'";
		
		try {
			st=con.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public void deletePageItem(String item_id){
		
		String sql="delete from masterpageallow where item_id='"+item_id+"'";
		
		try {
			st=con.createStatement();
			int i = st.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean updatePageItem(String item_id,String name,String description,String price,String imgURL,String imgURL1,String imgURL2){
		boolean flag=false;
		String sql="update masterpageallow set name='"+name+"', description='"+description+"',price='"+price+"' ,imgURL='"+imgURL+"', imgURL1='"+imgURL1+"', imgURL2='"+imgURL2+"' where item_id='"+item_id+"'";
		
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
	
	public PageAllowBean getPageItemDetail(int allow_id){
		PageAllowBean pageAllowBean = new PageAllowBean();
		String sql="select * from masterpageallow where allow_id='"+allow_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){

				pageAllowBean.setAllow_id(rs.getInt("allow_id"));
				pageAllowBean.setPage_id(rs.getInt("page_id"));
				pageAllowBean.setCompanyLine(rs.getInt("companyLine"));
				pageAllowBean.setCart(rs.getInt("cart"));
				pageAllowBean.setLogin(rs.getInt("login"));
				pageAllowBean.setSearch(rs.getInt("search"));
				pageAllowBean.setLogoURL(rs.getInt("logoURL"));
				pageAllowBean.setHome(rs.getInt("home"));
				pageAllowBean.setCatalog(rs.getInt("catalog"));
				pageAllowBean.setAboutUs(rs.getInt("aboutUs"));
				pageAllowBean.setShopFor(rs.getInt("shopFor"));
				pageAllowBean.setShopBy(rs.getInt("shopBy"));
				pageAllowBean.setSpecialOffers(rs.getInt("specialOffers"));
				pageAllowBean.setAdURL(rs.getInt("adURL"));
				pageAllowBean.setQuickLinks(rs.getInt("quickLinks"));
				pageAllowBean.setContactUs(rs.getInt("contactUs"));
				pageAllowBean.setGetConnected(rs.getInt("getConnected"));
				pageAllowBean.setfContactUs(rs.getInt("fContactUs"));
				pageAllowBean.setPhNo(rs.getInt("phNo"));
				pageAllowBean.setEmail(rs.getInt("email"));
				pageAllowBean.setAddress1(rs.getInt("address1"));
				pageAllowBean.setAddress2(rs.getInt("address2"));
				pageAllowBean.setNewsletter(rs.getInt("newsletter"));
				pageAllowBean.setSignupPromo(rs.getInt("signupPromo"));
				pageAllowBean.setCopyright(rs.getInt("copyright"));
				pageAllowBean.setPoweredBy(rs.getInt("poweredBy"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pageAllowBean;
	}
	
	public void viewPageItem(String item_id){
		boolean flag=false;
		String sql="select * from masterpageallow where item_id='"+item_id+"'";
		
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			
			flag=(i==1)?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<PageAllowBean> showPageItem(){
		
		ArrayList<PageAllowBean> page_list = new ArrayList<PageAllowBean>();
		String sql="select * from masterpageallow";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageAllowBean pageAllowBean = new PageAllowBean();
				pageAllowBean.setPage_id(rs.getInt("page_id"));
				pageAllowBean.setCompanyLine(rs.getInt("companyLine"));
				pageAllowBean.setCart(rs.getInt("cart"));
				pageAllowBean.setLogin(rs.getInt("login"));
				pageAllowBean.setSearch(rs.getInt("search"));
				pageAllowBean.setLogoURL(rs.getInt("imgURL"));
				pageAllowBean.setHome(rs.getInt("imgURL1"));
				pageAllowBean.setCatalog(rs.getInt("imgURL2"));
				pageAllowBean.setAboutUs(rs.getInt("aboutUs"));
				pageAllowBean.setShopFor(rs.getInt("aboutUs"));
				pageAllowBean.setShopBy(rs.getInt("aboutUs"));
				pageAllowBean.setSpecialOffers(rs.getInt("aboutUs"));
				pageAllowBean.setAdURL(rs.getInt("aboutUs"));
				pageAllowBean.setQuickLinks(rs.getInt("aboutUs"));
				pageAllowBean.setContactUs(rs.getInt("aboutUs"));
				pageAllowBean.setGetConnected(rs.getInt("aboutUs"));
				
				page_list.add(pageAllowBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageAllowBean> showCollectionPageItem(String category_id){
		
		ArrayList<PageAllowBean> page_list = new ArrayList<PageAllowBean>();
		String sql="select * from masterpageallow where category_id='"+category_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageAllowBean pageAllowBean = new PageAllowBean();
				pageAllowBean.setPage_id(rs.getInt("page_id"));
				pageAllowBean.setCompanyLine(rs.getInt("companyLine"));
				pageAllowBean.setCart(rs.getInt("cart"));
				pageAllowBean.setLogin(rs.getInt("login"));
				pageAllowBean.setSearch(rs.getInt("search"));
				pageAllowBean.setLogoURL(rs.getInt("imgURL"));
				pageAllowBean.setHome(rs.getInt("imgURL1"));
				pageAllowBean.setCatalog(rs.getInt("imgURL2"));
				pageAllowBean.setAboutUs(rs.getInt("aboutUs"));
				pageAllowBean.setShopFor(rs.getInt("aboutUs"));
				pageAllowBean.setShopBy(rs.getInt("aboutUs"));
				pageAllowBean.setSpecialOffers(rs.getInt("aboutUs"));
				pageAllowBean.setAdURL(rs.getInt("aboutUs"));
				pageAllowBean.setQuickLinks(rs.getInt("aboutUs"));
				pageAllowBean.setContactUs(rs.getInt("aboutUs"));
				pageAllowBean.setGetConnected(rs.getInt("aboutUs"));
				
				page_list.add(pageAllowBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageAllowBean> showSubCollectionPageItem(String category_id,String subcategory_id){
		
		ArrayList<PageAllowBean> page_list = new ArrayList<PageAllowBean>();
		String sql="select * from masterpageallow where category_id='"+category_id+"' and subcategory_id='"+subcategory_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageAllowBean pageAllowBean = new PageAllowBean();
				pageAllowBean.setPage_id(rs.getInt("page_id"));
				pageAllowBean.setCompanyLine(rs.getInt("companyLine"));
				pageAllowBean.setCart(rs.getInt("cart"));
				pageAllowBean.setLogin(rs.getInt("login"));
				pageAllowBean.setSearch(rs.getInt("search"));
				pageAllowBean.setLogoURL(rs.getInt("imgURL"));
				pageAllowBean.setHome(rs.getInt("imgURL1"));
				pageAllowBean.setCatalog(rs.getInt("imgURL2"));
				pageAllowBean.setAboutUs(rs.getInt("aboutUs"));
				pageAllowBean.setShopFor(rs.getInt("aboutUs"));
				pageAllowBean.setShopBy(rs.getInt("aboutUs"));
				pageAllowBean.setSpecialOffers(rs.getInt("aboutUs"));
				pageAllowBean.setAdURL(rs.getInt("aboutUs"));
				pageAllowBean.setQuickLinks(rs.getInt("aboutUs"));
				pageAllowBean.setContactUs(rs.getInt("aboutUs"));
				pageAllowBean.setGetConnected(rs.getInt("aboutUs"));
				
				page_list.add(pageAllowBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageAllowBean> searchPageItem(String query){
		ArrayList<PageAllowBean> page_list = new ArrayList<PageAllowBean>();
		
		String sql="select * from masterpageallow where UPPER(name) like UPPER('%"+query+"%')";
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()){
				PageAllowBean pageAllowBean = new PageAllowBean();
				pageAllowBean.setPage_id(rs.getInt("page_id"));
				pageAllowBean.setCompanyLine(rs.getInt("companyLine"));
				pageAllowBean.setCart(rs.getInt("cart"));
				pageAllowBean.setLogin(rs.getInt("login"));
				pageAllowBean.setSearch(rs.getInt("search"));
				pageAllowBean.setLogoURL(rs.getInt("imgURL"));
				pageAllowBean.setHome(rs.getInt("imgURL1"));
				pageAllowBean.setCatalog(rs.getInt("imgURL2"));
				pageAllowBean.setAboutUs(rs.getInt("aboutUs"));
				pageAllowBean.setShopFor(rs.getInt("aboutUs"));
				pageAllowBean.setShopBy(rs.getInt("aboutUs"));
				pageAllowBean.setSpecialOffers(rs.getInt("aboutUs"));
				pageAllowBean.setAdURL(rs.getInt("aboutUs"));
				pageAllowBean.setQuickLinks(rs.getInt("aboutUs"));
				pageAllowBean.setContactUs(rs.getInt("aboutUs"));
				pageAllowBean.setGetConnected(rs.getInt("aboutUs"));
				
				page_list.add(pageAllowBean);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return page_list;
		}	
}
package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Bean.CategoryBean;
import com.Bean.PageBean;
import com.Bean.SubCategoryBean;
import com.Connection.Connect;

public class BasicPageDAO
{
		Connection con;
		Statement st;
		ResultSet rs;
		
		public BasicPageDAO(){
			con = Connect.getConnection();
		}
		
		public boolean insertPageItem(String category_id,String subCategory_id, String name,String description,String price,String imgURL,String imgURL1,String imgURL2){
			
			boolean flag=false;
			int id=0;
			String sql = "insert into masterpage values(default , '"+category_id+"','"+subCategory_id+"' ,'"+name+"','"+description+"','"+price+"','"+imgURL+"', '"+imgURL1+"', '"+imgURL2+"')";
		
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
		
		String sql="select * from masterpage where item_id='"+item_id+"'";
		
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
		
		String sql="delete from masterpage where item_id='"+item_id+"'";
		
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
		String sql="update masterpage set name='"+name+"', description='"+description+"',price='"+price+"' ,imgURL='"+imgURL+"', imgURL1='"+imgURL1+"', imgURL2='"+imgURL2+"' where item_id='"+item_id+"'";
		
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
	
	public PageBean getPageItemDetail(int page_id){
		PageBean pageBean = new PageBean();
		String sql="select * from masterpage where page_id='"+page_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			
			while(rs.next()){

				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("logoURL"));
				pageBean.setHome(rs.getString("home"));
				pageBean.setCatalog(rs.getString("catalog"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("shopFor"));
				pageBean.setShopBy(rs.getString("shopBy"));
				pageBean.setSpecialOffers(rs.getString("specialOffers"));
				pageBean.setAdURL(rs.getString("adURL"));
				pageBean.setQuickLinks(rs.getString("quickLinks"));
				pageBean.setContactUs(rs.getString("contactUs"));
				pageBean.setGetConnected(rs.getString("getConnected"));
				pageBean.setfContactUs(rs.getString("fContactUs"));
				pageBean.setPhNo(rs.getString("phNo"));
				pageBean.setEmail(rs.getString("email"));
				pageBean.setAddress1(rs.getString("address1"));
				pageBean.setAddress2(rs.getString("address2"));
				pageBean.setNewsletter(rs.getString("newsletter"));
				pageBean.setSignupPromo(rs.getString("signupPromo"));
				pageBean.setCopyright(rs.getString("copyright"));
				pageBean.setPoweredBy(rs.getString("poweredBy"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pageBean;
	}
	
	public void viewPageItem(String item_id){
		boolean flag=false;
		String sql="select * from masterpage where item_id='"+item_id+"'";
		
		try {
			st=con.createStatement();
			int i=st.executeUpdate(sql);
			
			flag=(i==1)?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<PageBean> showPageItem(){
		
		ArrayList<PageBean> page_list = new ArrayList<PageBean>();
		String sql="select * from masterpage";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageBean pageBean = new PageBean();
				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("imgURL"));
				pageBean.setHome(rs.getString("imgURL1"));
				pageBean.setCatalog(rs.getString("imgURL2"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("aboutUs"));
				pageBean.setShopBy(rs.getString("aboutUs"));
				pageBean.setSpecialOffers(rs.getString("aboutUs"));
				pageBean.setAdURL(rs.getString("aboutUs"));
				pageBean.setQuickLinks(rs.getString("aboutUs"));
				pageBean.setContactUs(rs.getString("aboutUs"));
				pageBean.setGetConnected(rs.getString("aboutUs"));
				
				page_list.add(pageBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageBean> showCollectionPageItem(String category_id){
		
		ArrayList<PageBean> page_list = new ArrayList<PageBean>();
		String sql="select * from masterpage where category_id='"+category_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageBean pageBean = new PageBean();
				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("imgURL"));
				pageBean.setHome(rs.getString("imgURL1"));
				pageBean.setCatalog(rs.getString("imgURL2"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("aboutUs"));
				pageBean.setShopBy(rs.getString("aboutUs"));
				pageBean.setSpecialOffers(rs.getString("aboutUs"));
				pageBean.setAdURL(rs.getString("aboutUs"));
				pageBean.setQuickLinks(rs.getString("aboutUs"));
				pageBean.setContactUs(rs.getString("aboutUs"));
				pageBean.setGetConnected(rs.getString("aboutUs"));
				
				page_list.add(pageBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageBean> showSubCollectionPageItem(String category_id,String subcategory_id){
		
		ArrayList<PageBean> page_list = new ArrayList<PageBean>();
		String sql="select * from masterpage where category_id='"+category_id+"' and subcategory_id='"+subcategory_id+"'";
		
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				PageBean pageBean = new PageBean();
				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("imgURL"));
				pageBean.setHome(rs.getString("imgURL1"));
				pageBean.setCatalog(rs.getString("imgURL2"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("aboutUs"));
				pageBean.setShopBy(rs.getString("aboutUs"));
				pageBean.setSpecialOffers(rs.getString("aboutUs"));
				pageBean.setAdURL(rs.getString("aboutUs"));
				pageBean.setQuickLinks(rs.getString("aboutUs"));
				pageBean.setContactUs(rs.getString("aboutUs"));
				pageBean.setGetConnected(rs.getString("aboutUs"));
				
				page_list.add(pageBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return page_list;
	}
	
	public ArrayList<PageBean> searchPageItem(String query){
		ArrayList<PageBean> page_list = new ArrayList<PageBean>();
		
		String sql="select * from masterpage where UPPER(name) like UPPER('%"+query+"%')";
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()){
				PageBean pageBean = new PageBean();
				pageBean.setPage_id(rs.getInt("page_id"));
				pageBean.setCompanyLine(rs.getString("companyLine"));
				pageBean.setCart(rs.getString("cart"));
				pageBean.setLogin(rs.getString("login"));
				pageBean.setSearch(rs.getString("search"));
				pageBean.setLogoURL(rs.getString("imgURL"));
				pageBean.setHome(rs.getString("imgURL1"));
				pageBean.setCatalog(rs.getString("imgURL2"));
				pageBean.setAboutUs(rs.getString("aboutUs"));
				pageBean.setShopFor(rs.getString("aboutUs"));
				pageBean.setShopBy(rs.getString("aboutUs"));
				pageBean.setSpecialOffers(rs.getString("aboutUs"));
				pageBean.setAdURL(rs.getString("aboutUs"));
				pageBean.setQuickLinks(rs.getString("aboutUs"));
				pageBean.setContactUs(rs.getString("aboutUs"));
				pageBean.setGetConnected(rs.getString("aboutUs"));
				
				page_list.add(pageBean);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return page_list;
		}	
}


package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.SubCategoryBean;

import com.DAO.SubCategoryDAO;


/**
 * Servlet implementation class fetchSubCategory
 */
@WebServlet("/fetchSubCategory")
public class fetchSubCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SubCategoryDAO aa=new SubCategoryDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fetchSubCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type="";
		ArrayList<SubCategoryBean> list_subcat=null;
		
		SubCategoryDAO cd = new SubCategoryDAO();
		String query= request.getParameter("query");
		if(query!=null)
		{
			list_subcat=cd.searchSubCategory(query);
			
		}else
		{
			
			int cat_id=Integer.parseInt(request.getParameter("id"));
			type=request.getParameter("type");
			System.out.println(type);
			System.out.println(cat_id);
		
		//	list_subcat =cd.showSubCategory(cat_id);
		} 
		RequestDispatcher rd =request.getRequestDispatcher("search.jsp?mypage=displaySubCategory&&type="+type);
		request.setAttribute("subcat_list", list_subcat);
        rd.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
}
}
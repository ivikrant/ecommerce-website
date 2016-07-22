package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.ItemBean;
import com.Bean.SubCategoryBean;
import com.DAO.ItemDAO;
import com.DAO.SubCategoryDAO;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type="";
		ArrayList<ItemBean> list_subcat=null;
		
		ItemDAO itemDAO = new ItemDAO();
		String query= request.getParameter("query");
		if(query!=null)
		{
			list_subcat=itemDAO.searchItem(query);
			
		}else
		{
			
			int cat_id=Integer.parseInt(request.getParameter("id"));
			type=request.getParameter("type");
		
		//	list_subcat =cd.showSubCategory(cat_id);
		} 
		RequestDispatcher rd =request.getRequestDispatcher("search.jsp?query="+query);
		request.setAttribute("search_list", list_subcat);
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ReviewDAO;
import com.Bean.ReviewBean;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ReviewDAO reviewDAO = new ReviewDAO();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean update=false;
		if(request.getParameter("process")!=null){
			String process=request.getParameter("process");
			String reg_id=request.getParameter("id");
			
			if(process.equals("delete")){
				reviewDAO.deleteReview(reg_id);
			}
			else if(process.equals("update")){
				update=true;
				ReviewBean messageBean = reviewDAO.getReviewDetail(reg_id);
				request.setAttribute("messageBean", messageBean);
				RequestDispatcher rd = request.getRequestDispatcher("AdminShow.jsp?mypage=ShowMessage&&head=Messages");
				rd.forward(request, response);
							
			}
			else if(process.equals("view")){
				update=true;
				ReviewBean messageBean = reviewDAO.getReviewDetail(reg_id);
				request.setAttribute("messageBean", messageBean);
				RequestDispatcher rd = request.getRequestDispatcher("AdminView.jsp");
				rd.include(request, response);
			}
			
		}
		
		if(!update){
		ArrayList<ReviewBean> list_users=reviewDAO.showReviews();
		
		System.out.println("In Servlet");
		RequestDispatcher rd=request.getRequestDispatcher("AdminShow.jsp?mypage=ShowMessage&&head=Messages");
		request.setAttribute("array_list", list_users);
		rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String review = request.getParameter("review");
		String itemId = request.getParameter("item_id");
		
		boolean flag=reviewDAO.insertReview(itemId,name, email,title,review);
		
		if(flag){
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}	
	}
}
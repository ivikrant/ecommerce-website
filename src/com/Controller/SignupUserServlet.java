package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.SignupBean;
import com.DAO.SignupUserDAO;

/**
 * Servlet implementation class SignupUserServlet
 */
@WebServlet("/SignupUserServlet")
public class SignupUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static public boolean showuser=false;
       
	SignupUserDAO signupUserDAO = new SignupUserDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("process")!=null){
			String process=request.getParameter("process");
			String reg_id=request.getParameter("id");
			if(process.equals("delete")){
				signupUserDAO.deleteUser(reg_id);
			}
		}
		
		ArrayList<SignupBean> list_users=signupUserDAO.showUsers();
		
		System.out.println("In Servlet");
		RequestDispatcher rd=request.getRequestDispatcher("AdminIndex.jsp?mypage=ShowUser");
		request.setAttribute("array_list", list_users);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_name=request.getParameter("user_name");
		String user_email=request.getParameter("user_email");
		String user_password=request.getParameter("user_password");
		
		boolean flag=signupUserDAO.insertUser(user_name, user_email, user_password);
	}

}

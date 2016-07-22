package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminLoginDAO;
import com.DAO.LoginDAO;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;
	boolean flag=false;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		session.invalidate();
		response.sendRedirect("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String admin_name=request.getParameter("admin_name");
		String admin_password=request.getParameter("admin_password");
		String rem=request.getParameter("remember_me");
	
		Cookie ck1=null,ck2=null;
		
		if(rem!=null){
			ck1=new Cookie("admin_name",admin_name);
			ck1.setMaxAge(300);
			
			ck2=new Cookie("admin_password",admin_password);
			ck2.setMaxAge(300);
			
			response.addCookie(ck1);
			response.addCookie(ck2);
		}
		
		AdminLoginDAO adminLoginDAO=new AdminLoginDAO();
		flag=adminLoginDAO.checkCredential(admin_name, admin_password);
		int reg_id = adminLoginDAO.id;
		
		if(flag)
		{
			session = request.getSession();
			session.setMaxInactiveInterval(200);
			session.setAttribute("admin_name", admin_name);
			session.setAttribute("reg_id", reg_id);
			String new_page="true";
			session.setAttribute("new_page", new_page);
			
			int totalAdmins = adminLoginDAO.totalAdmins;
			session.setAttribute("totalAdmins", totalAdmins);
			int totalUsers = adminLoginDAO.totalUsers;
			session.setAttribute("totalUsers", totalUsers);
			RequestDispatcher rd= request.getRequestDispatcher("newAdminIndex.jsp");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
			rd.forward(request, response);
		}
	}
}
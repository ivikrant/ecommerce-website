package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.AdminSignupBean;
import com.Bean.SignupBean;
import com.DAO.AdminSignupDAO;
import com.DAO.SendMail;

/**
 * Servlet implementation class AdminSignupServlet
 */
@WebServlet("/AdminSignupServlet")
public class AdminSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      AdminSignupDAO adminSignupDAO = new AdminSignupDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSignupServlet() {
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
				adminSignupDAO.deleteAdmin(reg_id);
			}
			else if(process.equals("update")){
				update=true;
				AdminSignupBean adminSignupBean = adminSignupDAO.getAdminDetail(reg_id);
				request.setAttribute("adminSignupBean", adminSignupBean);
				RequestDispatcher rd = request.getRequestDispatcher("AdminSignup.jsp");
				rd.forward(request, response);
							
			}
			else if(process.equals("view")){
				update=true;
				AdminSignupBean adminSignupBean = adminSignupDAO.getAdminDetail(reg_id);
				request.setAttribute("adminSignupBean", adminSignupBean);
				RequestDispatcher rd = request.getRequestDispatcher("AdminShow.jsp?myage=AdminView&&head=Admin Details");
				rd.include(request, response);
			}
			
		}
		
		if(!update){
		ArrayList<AdminSignupBean> list_users=adminSignupDAO.showUsers();
		
		RequestDispatcher rd=request.getRequestDispatcher("AdminShow.jsp?mypage=ShowAdmin&&head=Admins");
		request.setAttribute("array_list", list_users);
		rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean flag=false;
		
		String admin_name=request.getParameter("admin_name");
		String admin_email=request.getParameter("admin_email");
		String admin_password=request.getParameter("admin_password");
		
		if(request.getParameter("reg_id")!=null){
			String reg_id=request.getParameter("reg_id");
			
			flag=adminSignupDAO.updateAdmin(reg_id, admin_name, admin_email, admin_password);
		}
		else{
			flag=adminSignupDAO.insertAdmin(admin_name, admin_email, admin_password);
		}
		if(flag){
		
			SendMail.sendMail("vikrantchoudharylpu@gmail.com", "654556792@", "vikrant.choudhary6545@gmail.com");
			
			RequestDispatcher rd=request.getRequestDispatcher("AdminIndex.jsp");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("AdminSignup.jsp");
			rd.forward(request, response);
		}
	}

}

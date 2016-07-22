package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.MessageBean;
import com.DAO.MessageDAO;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    MessageDAO md = new MessageDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageServlet() {
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
				md.deleteMessage(reg_id);
			}
			
			else if(process.equals("view")){
				update=true;
				MessageBean messageBean = md.getMessageDetail(reg_id);
				request.setAttribute("messageBean", messageBean);
				RequestDispatcher rd = request.getRequestDispatcher("AdminShow.jsp?mypage=ViewMessage&&head=View Message");
				rd.include(request, response);
			}
			
		}
		
		if(!update){
		ArrayList<MessageBean> list_users=md.showMessages();
		
		RequestDispatcher rd=request.getRequestDispatcher("AdminShow.jsp?mypage=ShowMessage&&head=Inbox");
		request.setAttribute("array_list", list_users);
		rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String mes  = request.getParameter("mes");
		
		boolean flag=md.insertMessage(name, email, subject, mes);
		
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
package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.CategoryDAO;


/**
 * Servlet implementation class FetchCategopry
 */
@WebServlet("/FetchCategopry")
public class FetchCategopry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchCategopry() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CategoryDAO cd = new CategoryDAO();
		PrintWriter out = response.getWriter();
		try{
		ResultSet rs = cd.fetchCategory();
		
		while(rs.next())
		{
			
			out.println("<a href='fetchSubCategory?id="+rs.getInt(1)+"'>"+rs.getString(2)+"</a>"+"\n");
			System.out.println(rs.getString(2));
		}
		
		}catch(SQLException e){}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

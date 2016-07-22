package com.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.DAO.IndexPicsDAO;

/**
 * Servlet implementation class IndexPicsServlet
 */
@WebServlet("/IndexPicsServlet")
public class IndexPicsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    IndexPicsDAO indexPicsDAO = new IndexPicsDAO(); 
	private final String Upload_Directory = "C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexPicsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("AdminIndex.jsp?mypage=EnterIndexPics");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(ServletFileUpload.isMultipartContent(request))
		{
			DiskFileItemFactory file = new DiskFileItemFactory();
			
			try{
				
			 List<FileItem> items = new ServletFileUpload(file).parseRequest(request);
			 
			 String imagename="";
			 IndexPicsDAO indexPicsDAO = new IndexPicsDAO();

			 				for(FileItem item:items)
			 				{
			 					
			 							if(!item.isFormField()){
			 								imagename = new File(item.getName()).getName();
			 																	
			 								item.write(new File(Upload_Directory+File.separator+imagename));
			 							}
			 				}
			 				
			 				 FileItem fHead = items.get(0);
			 				 FileItem fSubHead = items.get(1);
			 				 FileItem fdescription = items.get(2);
			 				 
			 				 String head = fHead.getString();
			 				 String subhead = fSubHead.getString();
			 				 String description = fdescription.getString();
			 				 
			 				 boolean flag = indexPicsDAO.insertIndexPics(head, subhead, description,imagename);
			 				 if(flag){
			 					 RequestDispatcher rd= request.getRequestDispatcher("AdminIndex.jsp");
			 					 rd.forward(request, response);
			 				 }
			 				 else{
			 				
			 					 RequestDispatcher rd= request.getRequestDispatcher("AdminError.jsp");
			 					 rd.forward(request, response);
			 				 }
				
			}
			catch(Exception e){
				RequestDispatcher rd= request.getRequestDispatcher("AdminError.jsp");
				 rd.forward(request, response);
			}
			
		}
		else{
			System.out.println("In exception2");
			RequestDispatcher rd= request.getRequestDispatcher("AdminError.jsp");
			 rd.forward(request, response);
		}
	}
}
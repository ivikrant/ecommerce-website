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
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import com.DAO.SubCategoryDAO;

/**
 * Servlet implementation class SubCategoryServlet
 */
@WebServlet("/SubCategoryServlet")
public class SubCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SubCategoryDAO subCategoryDAO = new SubCategoryDAO();
	private final String Upload_Directory = "C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("AdminIndex.jsp?mypage=EnterSubCategory");
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

				for(FileItem item:items)
				{
							if(!item.isFormField()){
								if(item.getName()!=null){
								imagename = new File(item.getName()).getName();
								
								item.write(new File(Upload_Directory+File.separator+imagename));
								}
							}
				}

				 FileItem category_id = items.get(0);
				 FileItem subcategory=items.get(1);
				 FileItem description = items.get(2);
				 FileItem myfile = items.get(3);

				 String sub_cat_name = subcategory.getString();
				 String sub_cat_desc = description.getString();
				 String cat_id = category_id.getString();
				 
				 boolean flag = subCategoryDAO.insertSubCategory(cat_id, sub_cat_name, sub_cat_desc, imagename);

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
			RequestDispatcher rd= request.getRequestDispatcher("AdminError.jsp");
			 rd.forward(request, response);
		}
	}
}
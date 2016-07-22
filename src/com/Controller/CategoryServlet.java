package com.Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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

import com.Bean.AdminSignupBean;
import com.Bean.CategoryBean;
import com.DAO.CategoryDAO;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    CategoryDAO categoryDAO = new CategoryDAO();
	private final String Upload_Directory = "C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
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
			String category_id=request.getParameter("id");
			
			if(process.equals("delete")){
				categoryDAO.deleteCategory(category_id);
			}
			else if(process.equals("update")){
				update=true;
				CategoryBean categoryBean = categoryDAO.getCategoryDetail(category_id);
				request.setAttribute("categoryBean", categoryBean);
				RequestDispatcher rd = request.getRequestDispatcher("AdminShow.jsp?mypage=EnterCategories&&head=Update Categories");
				rd.forward(request, response);
							
			}
			else if(process.equals("view")){
				update=true;
				CategoryBean categoryBean = categoryDAO.getCategoryDetail(category_id);
				request.setAttribute("categoryBean", categoryBean);
				RequestDispatcher rd = request.getRequestDispatcher("AdminShow.jsp?mypage=ShowCategories&&head=View Category");
				rd.include(request, response);
			}
			
		}
		
		if(!update){
			ArrayList<CategoryBean> list_users=categoryDAO.showCategory();
			
			RequestDispatcher rd=request.getRequestDispatcher("AdminShow.jsp?mypage=ShowCategories&&head=Show Categories");
			request.setAttribute("array_list", list_users);
			rd.forward(request, response);
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(request.getParameter("category_id")!=null){
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

					FileItem category_id=items.get(0);
					 FileItem category=items.get(1);
					 FileItem description = items.get(2);

					 String scategory_id = category_id.getString();
					 String categoryName = category.getString();
					 String categoryDescription = description.getString();
					 
					 boolean flag = categoryDAO.updateCategory(scategory_id,categoryName, categoryDescription, imagename);

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
		else{
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

				 FileItem category=items.get(0);
				 FileItem description = items.get(1);

				 String categoryName = category.getString();
				 String categoryDescription = description.getString();
				 
				 boolean flag = categoryDAO.insertCategory(categoryName, categoryDescription, imagename);

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
}
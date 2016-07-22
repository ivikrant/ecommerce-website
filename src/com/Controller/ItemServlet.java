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

import com.DAO.ItemDAO;
import com.sun.org.apache.bcel.internal.generic.FMUL;

/**
 * Servlet implementation class ItemServlet
 */
@WebServlet("/ItemServlet")
public class ItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ItemDAO itemDAO = new ItemDAO();
	private final String Upload_Directory = "C:/Users/db2admin/workspace/Code/WebContent/Upload_Directory";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String categoryid= request.getParameter("category");
		
		RequestDispatcher rd = request.getRequestDispatcher("EnterItemSelect.jsp?category="+categoryid);
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

				 FileItem fcategory_id = items.get(0);
				 FileItem fsubcategory_id=items.get(1);
				 FileItem fname =items.get(2);
				 FileItem fdescription = items.get(3);
				 FileItem fprice = items.get(4);
				 FileItem fmyfile = items.get(5);
				 FileItem fmyfile1 = items.get(6);
				 FileItem fmyfile2 = items.get(7);

				 String cat_id = fcategory_id.getString();
				 String subcategory_id = fsubcategory_id.getString();
				 String name = fname.getString();
				 String description = fdescription.getString();
				 String price = fprice.getString();
				 String myfile=new File(fmyfile.getName()).getName();
				 String myfile1=new File(fmyfile1.getName()).getName();
				 String myfile2=new File(fmyfile2.getName()).getName();
				 
				 boolean flag = itemDAO.insertItem(cat_id, subcategory_id, name, description, price,myfile,myfile1,myfile2);

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
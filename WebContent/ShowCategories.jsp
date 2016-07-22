<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.Bean.CategoryBean"%>
    <%@page import="java.util.ArrayList" %>
 <html>  
 <head>
 <title>Show Categories</title>
 </head> 
 <body>
		<table class="table table-striped table" border="2">
			<thead>
			<tr>
				<th>Category Name</th>
				<th>Category Description</th>
				<th colspan="3"><center>Actions</center></th>
			</tr>
			</thead>
			<tbody>
			<%
			ArrayList<CategoryBean> array_list = (ArrayList<CategoryBean>)request.getAttribute("array_list");
			for(int i=0;i<array_list.size();i++){
				CategoryBean categoryBean=(CategoryBean)array_list.get(i);
			%>
			<tr>
				<td class="center"><%=categoryBean.getCategoryName() %></td>
				<td class="center"><%=categoryBean.getCategoryDescription() %></td>
				
				<td><a class="btn btn-success" href="CategoryServlet?id=<%=categoryBean.getCategory_Id()%>&&process=delete">delete</a></td>
				
				<td><a class="btn btn-success" href="CategoryServlet?id=<%=categoryBean.getCategory_Id()%>&&process=view">view</a></td>
				
				<td><a class="btn btn-success" href="CategoryServlet?id=<%=categoryBean.getCategory_Id()%>&&process=update">update</a></td>
				
				
			<% }%>	
			</tr>
			</tbody>
		</table>
		</body>
		</html>
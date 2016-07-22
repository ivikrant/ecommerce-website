<%@page import="com.DAO.SubCategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.DAO.CategoryDAO" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String category_id = request.getParameter("category");
		SubCategoryDAO scd = new SubCategoryDAO();
		ResultSet rs = scd.allSubCategory(category_id);
	%>

	<form action="ItemServlet" method="post" enctype="multipart/form-data" >
		<table>
			<tr>
				<td>
					<input type="text" name="category" value="<%=category_id %>" >
				</td>
			</tr>
			<tr>	
				
				<td> Select SubCategory </td>
				<td> <select name="subcategory">
					 <%
					  		while(rs.next()){
					  			
					 %>
					 	<option value="<%= rs.getString(1)%>"> <%= rs.getString(3) %></option>
					 
					<%
					 		}
					%>
						</select>
				</td>
			
			</tr>
			
			<tr>
				<td>
					Name :
				</td>
				<td>
					<input type="text" name="name" placeholder="Enter Name " />
				</td>
			</tr>
			<tr>
				<td>
					Description (Optional) :
				</td>
				<td>
					<textarea rows="7" cols="50" name="description" placeholder="Enter Description" ></textarea>
					
				</td>
			</tr>
			<tr>
				<td>
					Price (Optional) :
				</td>
				<td>
					<input type="text" name="price" placeholder="Enter Price" >
				</td>
			</tr>
			
			<tr>
			
				<td>
					Select File :
				</td>
				<td>
					<input type="file" name="file1" />
				</td>
			</tr>
			<tr>
				<td>
					Select File :
				</td>
				<td>
					<input type="file" name="file2" />
				</td>
			</tr>
			<tr>
				<td>
					Select File :
				</td>
				<td>
					<input type="file" name="file3" />
				</td>
			</tr>
			
		</table>
		
		<input type="submit" />
	</form>
</body>
</html>
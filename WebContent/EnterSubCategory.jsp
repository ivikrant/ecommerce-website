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
		CategoryDAO cd = new CategoryDAO();
		ResultSet rs = cd.fetchCategory();
	%>

	<form action="SubCategoryServlet" method="post" enctype="multipart/form-data" >
		<table>
			<tr>	
				<td> Select Category </td>
				<td> <select name="subCategory">
					 <%
					  		while(rs.next()){
					 %>
					 	<option value="<%= rs.getString(1)%>"> <%= rs.getString(2) %></option>
					 
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
					Description :
				</td>
				<td>
					<input type="text" name="description" placeholder="Enter Description" >
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
			
		</table>
		
		<input type="submit" />
	</form>
</body>
</html>
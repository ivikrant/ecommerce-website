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
		CategoryDAO cd = new CategoryDAO();
		ResultSet rs = cd.fetchCategory();
	%>

	<form action="ItemServlet" method="get">
		<table>
			<tr>	
				<td> Select Category </td>
				<td> <select name="category">
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
			
		</table>
		
		<input type="submit" />
	</form>
</body>
</html>
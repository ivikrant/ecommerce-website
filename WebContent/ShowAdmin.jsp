<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Bean.AdminSignupBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Showing Admins</title>
</head>
<body>
	<table class="table table-striped table">
			<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th colspan="3"><center>Action</center></th>
			</tr>
			</thead>
			<tbody>
			<%
			ArrayList<AdminSignupBean> array_list = (ArrayList<AdminSignupBean>)request.getAttribute("array_list");
			for(int i=0;i<array_list.size();i++){
				AdminSignupBean adminSignupBean=(AdminSignupBean)array_list.get(i);
			%>
			<tr>
				<td class="center"><%=adminSignupBean.getName() %></td>
				<td class="center"><%=adminSignupBean.getEmail() %></td>
				<td class="center"><%=adminSignupBean.getPassword() %></td>
				<td><a class="btn btn-success" href="AdminSignupServlet?id=<%=adminSignupBean.getId()%>&process=delete">delete</a></td>
				<td><a class="btn btn-success" href="AdminSignupServlet?id=<%=adminSignupBean.getId()%>&process=update">update</a></td>
				<td><a class="btn btn-success" href="AdminSignupServlet?id=<%=adminSignupBean.getId()%>&process=view">view</a></td>
				
			<% }%>	
			</tr>
			</tbody>
		</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.Bean.SignupBean"%>
    <%@page import="java.util.ArrayList" %>
 <html>  
 <head>
 <title>Show Users</title>
 </head> 
 <body>
		<table class="table table-striped table" border="2">
			<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th colspan="3"><center>Actions</center></th>
			</tr>
			</thead>
			<tbody>
			<%
			ArrayList<SignupBean> array_list = (ArrayList<SignupBean>)request.getAttribute("array_list");
			for(int i=0;i<array_list.size();i++){
				SignupBean signupBean=(SignupBean)array_list.get(i);
			%>
			<tr>
				<td class="center"><%=signupBean.getName() %></td>
				<td class="center"><%=signupBean.getEmail() %></td>
				<td class="center"><%=signupBean.getPassword() %></td>
				<td><a class="btn btn-success" href="SignupUserServlet?id=<%=signupBean.getId()%>&&process=delete">delete</a></td>
				
				<td><a class="btn btn-success" href="SignupUserServlet?id=<%=signupBean.getId()%>&&process=view">view</a></td>
				
				<td><a class="btn btn-success" href="SignupUserServlet?id=<%=signupBean.getId()%>&&process=update">update</a></td>
				
				
			<% }%>	
			</tr>
			</tbody>
		</table>
		</body>
		</html>
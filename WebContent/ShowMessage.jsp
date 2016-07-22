<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Bean.MessageBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inbox</title>
</head>
<body>
	<table class="table table-striped table">
			<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Subject</th>
				<th colspan="2"><center>Action</center></th>
			</tr>
			</thead>
			<tbody>
			<%
			ArrayList<MessageBean> array_list = (ArrayList<MessageBean>)request.getAttribute("array_list");
			for(int i=0;i<array_list.size();i++){
				MessageBean messageBean=(MessageBean)array_list.get(i);
			%>
			<tr>
				<td class="center"><%=messageBean.getName() %></td>
				<td class="center"><%=messageBean.getEmail() %></td>
				<td class="center"><%=messageBean.getSubject() %></td>
				<td><a class="btn btn-success" href="MessageServlet?id=<%=messageBean.getMes_id()%>&process=delete">delete</a></td>
				
				<td><a class="btn btn-success" href="MessageServlet?id=<%=messageBean.getMes_id()%>&process=view">view</a></td>
				
			<% }%>	
			</tr>
			</tbody>
		</table>
</body>
</html>
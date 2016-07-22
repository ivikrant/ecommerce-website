<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Bean.ReviewBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reviews</title>
</head>
<body>
	<table class="table table-striped table">
			<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Review</th>
				<th colspan="3"><center>Action</center></th>
			</tr>
			</thead>
			<tbody>
			<%
			ArrayList<ReviewBean> array_list = (ArrayList<ReviewBean>)request.getAttribute("array_list");
			for(int i=0;i<array_list.size();i++){
				ReviewBean reviewBean=(ReviewBean)array_list.get(i);
			%>
			<tr>
				<td class="center"><%=reviewBean.getName() %></td>
				<td class="center"><%=reviewBean.getEmail() %></td>
				<td class="center"><%=reviewBean.getReview() %></td>
				<td><a class="btn btn-success" href="MessageServlet?id=<%=reviewBean.getReview_id()%>&process=delete">delete</a></td>
				<td><a class="btn btn-success" href="MessageServlet?id=<%=reviewBean.getReview_id()%>&process=update">update</a></td>
				<td><a class="btn btn-success" href="MessageServlet?id=<%=reviewBean.getReview_id()%>&process=view">view</a></td>
				
			<% }%>	
			</tr>
			</tbody>
		</table>
</body>
</html>
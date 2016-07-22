<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.Bean.MessageBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-striped table">
			
			<tbody>
			<%
			MessageBean messageBean = (MessageBean)request.getAttribute("messageBean");
		
			%>
			<tr>
				<td class="center">From : <%=messageBean.getName() %> ( <%=messageBean.getEmail() %> )</td>
			</tr>
			<tr>
				<td class="center">Subject : <%=messageBean.getSubject() %></td>
			</tr>
			<tr>
				<td class="center"><%=messageBean.getMes() %></td>
			</tr>
			<tr>
				<td>
					<div align="right">
						<a class="btn btn-success" href="MessageServlet?id=<%=messageBean.getMes_id()%>&process=delete">delete</a>
					</div>
					<div align="left">
						<a class="btn btn-success" href="MessageServlet">Go Back</a>
					</div>
				</td>
			</tr>
			</tbody>
	</table>
</body> 
</html>
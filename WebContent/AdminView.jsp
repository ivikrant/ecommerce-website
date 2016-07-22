<%@page import="com.Bean.AdminSignupBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%if(request.getAttribute("adminSignupBean")!=null){
		AdminSignupBean adminSignupBean = (AdminSignupBean) request.getAttribute("adminSignupBean");	
	%>
	
	<form action="AdminSignupServlet" method="post">
		<table>
			<tr>
				<td>Username</td>
				<td><%=adminSignupBean.getName() %></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><%=adminSignupBean.getEmail() %></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><%=adminSignupBean.getPassword() %></td>
			</tr>
			<tr>
				<td>Registration Id</td>
				<td><%=adminSignupBean.getId() %></td>
			</tr>
		</table>
	</form>
	
	<%
	}
	%>


</body>
</html>
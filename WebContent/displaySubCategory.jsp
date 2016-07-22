<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Bean.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		ArrayList<SubCategoryBean> list_subcat = (ArrayList<SubCategoryBean>) request.getAttribute("subcat_list");
	
		for(int i=0;i<list_subcat.size();i++){
			SubCategoryBean subCategoryBean = (SubCategoryBean) list_subcat.get(i);
			
	%>
		<table>
		<tr>
		<td>
		<img alt="Images" src="C:\\Users\\db2admin\\Documents\\Eclipse WorkSpace\\Smart_City_Project\\WebContent\\Upload_Directory\\<%=subCategoryBean.getImgURL()%>" />
		</td>
		</tr>
		<tr>
		<td>
		<p> <%=subCategoryBean.getName() %> </p>
		</td>
		</tr>
		<tr>
		<td>
		<a href="ProductDetail.jsp?Prod_id=<%=subCategoryBean.getSubcategory_id() %>&&type=<%=request.getParameter("type") %>" >View Details </a>
		</td>
		</tr>
		</table>
	<%
		}
	%>

</body>
</html>
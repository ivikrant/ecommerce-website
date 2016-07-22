<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="IndexPicsServlet" method="post" enctype="multipart/form-data" >
		<table>
			
			<tr>
				<td>
					Title :
				</td>
				<td>
					<input type="text" name="head" placeholder="Enter Big Title (Optional) " />
				</td>
			</tr>
			<tr>
				<td>
					SubHeading :
				</td>
				<td>
					<input type="text" name="subhead" placeholder="Enter Heading (Optional)" />
				</td>
			</tr>
			<tr>
				<td>
					Description :
				</td>
				<td>
					<input type="text" name="description" placeholder="Enter Description (Optional)" >
				</td>
			</tr>
			
			<tr>
				<td>
					Select File :
				</td>
				<td>
					<input type="file" name="fileName" />
				</td>
			</tr>
		</table>
		
		<button type="submit" >submit</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
</head>
<body>

	<h1>PRACTICA T6</h1>
	
	<%
		String result = (String)session.getAttribute("text");
		if(result != null){
			out.println(result);
		}
	%>
	
	<h2>Aquí estará la lista...</h2>
	
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Enlace</th>
				<th>Usuario</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>0</td>
				<td> <a href="./">Ejemplo</a> </td>
				<td>ejemplo</td>
			</tr>
		</tbody>
	</table>

</body>
</html>
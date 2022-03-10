<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
			crossorigin="anonymous">
	
	</head>
	<body>
	
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container">
				<h1 class="navbar-brand" href="#">PRÁCTICA T6</h1>
			</div>
		</nav>
	
	
		<div class="container py-5">
			<%
				String result = (String)session.getAttribute("text");
				if(result != null){
					out.println(result);
				}
			%>
		
			<div class="col-12 col-md-10 col-md-8 mx-auto"> 
				<h2>Lista de Proyectos</h2>
			 	<p>Todos las proyectos de los compañeros indexados en esta tabla.</p>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Enlace</th>
							<th>Usuario</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>0</td>
							<td><a href="./SumarPorcentaje_AlvCarballo.jsp">Sumar porcentaje</a></td>
							<td>AlvCarballo</td>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="./Mayusculas_FJvb85.jsp">Mayúsculas</a></td>
							<td>FJvb85</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="./EspacioEntreCaracteres_Dybeuh.jsp">Colocar espacios entre caracteres</a></td>
							<td>Dybeuh</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	
	</body>
</html>

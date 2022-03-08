<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Sumar Porcentaje</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
		<div class="col-12 mt-5">
			<h1>Sumar Porcentaje</h1>
			<p>Entroduce un número y el porcentaje y devolveremos el número con el porcentaje sumado</p>
		</div>
			<div class="col-12 col-lg-4 offset-lg-4 mt-5">
				<form action="SumarPorcentaje_AlvCarballo" method="Post">
					<label class="form-label">Número</label>
					<input class="form-control" type="number" step="0.01" name="numero" placeholder="Número" autofocus required="required"/>
					<label class="form-label">Porcentaje</label>
					<input class="form-control" type="number" step="0.01" name="porcentaje" placeholder="Porcentaje" required="required"/>
					<div class="my-3">
					<%
						if (request.getAttribute("resultado") != null) 
						{
							out.println("Resultado = " + request.getAttribute("resultado"));
						}
					%>
					</div>
					<div class="text-center">
					<input class="btn btn-primary mt-3" type="submit"
						value="Calcular" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

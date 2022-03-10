<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sumar Porcentaje</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="./styles.css">
</head>

<body>
	<div class="container my-5">
		<div class="row">
			<div class="col-12 col-md-8 col-lg-6 mx-auto">
				<main class="bg-light py-3 px-4 border rounded">

					<h1>Sumar Porcentaje</h1>
					 <h2 class="author fs-5 border-bottom d-inline">Álvaro Octavio Carballo Failde</h2>
					<p id="descripcion">Introduce un número y el porcentaje y
						devolveremos el número con el porcentaje sumado</p>

					<form action="SumarPorcentaje_AlvCarballo" method="Post">

						<div id="inputs" class="mb-4">
							<label>Número</label> <input type="number" step="0.01"
								name="numero" placeholder="Número" autofocus required="required" />
							<label>Porcentaje</label> <input type="number" step="0.01"
								name="porcentaje" placeholder="Porcentaje" required="required" />


						</div>
						<div class="my-3">
							<%
						if (request.getAttribute("resultado") != null) 
						{
							out.println("Resultado = " + request.getAttribute("resultado"));
						}else{
							%> <br/> <%
						}
					%>
						</div>

						<div class="d-flex justify-content-between">
						<input class="botonenviar" type="submit" value="Calcular" />
							<a href="./index_pycolmenero.jsp" class="botoncancelar">VOLVER</a>
						</div>

					</form>
				</main>
			</div>
		</div>
	</div>

</body>

</html>
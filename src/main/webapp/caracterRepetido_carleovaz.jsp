<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Caracter Repetido</title>
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

					<h1>Carácter Repetido</h1>
					<p id="descripcion">Introduce una cadena de texto y un caracter a buscar.</p>

					<form action="caracter_Repetido" method="Post">

						<div id="inputs" class="mb-4">
							<label>Cadena:</label> <input type="text"
								name="cadena" placeholder="Introduce texto" autofocus required="required" />
							<label>Carácter:</label> <input type="text"
								name="caracter" placeholder="Introduce un carácter" required="required" />


						</div>
						<div class="my-3">
							<%
						if (request.getAttribute("contador") != null) 
						{
							out.println("El caracter aparece = " + request.getAttribute("contador"));
						}else{
							%> <br/> <%
						}
					%>
						</div>

						<div class="d-flex justify-content-between">
						<input class="botonenviar" type="submit" value="buscar" />
							<a href="./index_pycolmenero.jsp" class="botoncancelar">VOLVER</a>
						</div>

					</form>
				</main>
			</div>
		</div>
	</div>

</body>

</html>
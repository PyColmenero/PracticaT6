<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang=es>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Eliminador de carácteres</title>
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

					<h1>Eliminador de carácteres</h1>
					<h2 class="author fs-5 border-bottom d-inline">Fco. Javier Rodríguez Rufo</h2>
					<p id="descripcion">Eliminación de un carácter dado por el usuario sobre un texto escrito.</p>
					<form method="POST" action="EliminadorCaracter_Franfrunfrinfran">
						<div id="inputs" class="mb-4">
							<label>Texto</label> 
								<input class="form-control" type="text"
								id="texto" name="texto" placeholder="Escriba su texto aquí" /> 
							<label>Selecciona un cáracter</label>
								<input class="form-control" type="text" id="caracter"
								name="caracter" placeholder="Escriba un carácter del texto" /> 
						
							<%
								if (request.getAttribute("resultado_texto") != null) { // si hay mensaje
									out.println(request.getAttribute("resultado_texto")); // lo muestro
								} else {
							%><br>
							<%
								}
							%>
						</div>
						</br>
						<div class="d-flex justify-content-between">
							<input class="botonenviar" type="submit" value="Aceptar" />
							<a href="./index_pycolmenero.jsp" class="botoncancelar">VOLVER</a>
						</div>
					</form>
				</main>
			</div>
		</div>
	</div>
</body>
</html>
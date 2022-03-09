<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Multiplicar</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>
	<body class="container py-5">
		<div class="w-50 mx-auto">
			<h1 class="text-center my-4">Multiplicar</h1>
			<form method="POST" action="Multiplicar">
				<input class="form-control" type="number" id="numero1" name="numero1" placeholder="Número 1"/>
				</br>
				<input class="form-control" type="number" id="numero2" name="numero2" placeholder="Número 2"/>
				</br>
				<p>
				<%
				if(request.getAttribute("resultado_multiplicar")!=null){ // si hay mensaje
					out.println(request.getAttribute("resultado_multiplicar"));	 // lo muestro
				}
				%>
				</p>
				</br>
				<input class="btn btn-success" type="submit" value="Aceptar"/>
			</form>
		</div>
	</body>
</html>
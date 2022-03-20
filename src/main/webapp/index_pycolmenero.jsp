<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LISTA DE PROYECTOS</title>
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
				<h1 class="navbar-brand" href="#">PRÁCTICA T6</h1>
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
							<td>1</td>
							<td><a href="./SumarPorcentaje_AlvCarballo.jsp">Sumar porcentaje.</a></td>
							<td>@AlvCarballo</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="./Mayusculas_FJvb85.jsp">Mayúsculas.</a></td>
							<td>@FJvb85</td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href="./EspacioEntreCaracteres_Dybeuh.jsp">Colocar espacios entre caracteres.</a></td>
							<td>@Dybeuh</td>
						</tr>
						<tr>
							<td>4</td>
							<td><a href="./Calculadora_infantecruzalejandro.jsp">Calculadora.</a></td>
							<td>@infantecruzalejandro</td>
						</tr>
						<tr>
							<td>5</td>
							<td><a href="./EliminadorCaracter_Franfrunfrinfran.jsp">Eliminador de carácteres.</a></td>
							<td>@Franfrunfrinfran</td>
						</tr>
						<tr>
							<td>6</td>
							<td><a href="./ContarCaracteres_OihanaMv92.jsp">Contador de carácteres.</a></td>
							<td>@OihanaMv92</td>
						</tr>
						<tr>
							<td>7</td>
							<td><a href="./ContarVocales_sarafersanz.jsp">Contar las vocales.</a></td>
							<td>@sarafersanz</td>
						</tr>
						<tr>
							<td>8</td>
							<td><a href="./Multiplicar_antoniorg1608.jsp">Multiplicar.</a></td>
							<td>@antoniorg1608</td>
						</tr>
						<tr>
							<td>9</td>
							<td><a href="./InvertirUpperLower_kvdos.jsp">Invertir UpperLower.</a></td>
							<td>@kvdos</td>
						</tr>
						<tr>
							<td>10</td>
							<td><a href="./CompararCadenas_AndresPedrosa.jsp">Comparar dos cadenas.</a></td>
							<td>@AndresPedrosa</td>
						</tr>
						<tr>
							<td>11</td>
							<td><a href="./toLowerCase_alivazgom.jsp">Minúsculas.</a></td>
							<td>@alivazgom</td>
						</tr>
						<tr>
							<td>12</td>
							<td><a href="./IntercalarCadenas_AndresGil94.jsp">Intercalar 2 cadenas.</a></td>
							<td>@AndresGil94</td>
						</tr>
						<tr>
							<td>13</td>
							<td><a href="./caracterRepetido_carleovaz.jsp">Detectar carácter repetido.</a></td>
							<td>@carleovaz</td>
						</tr>
						<tr>
							<td>14</td>
							<td><a href="./Hopolapa_jotaulian.jsp">Hopolapa.</a></td>
							<td>@jotaulian</td>
						</tr>
						<tr>
							<td>15</td>
							<td><a href="./Iniciales_ivantriguero.jsp">Iniciales.</a></td>
							<td>@ivantriguero</td>
						</tr>
						<tr>
							<td>16</td>
							<td><a href="./InvertirOrden_miguelvazquezmartin.jsp">Invertir orden.</a></td>
							<td>@miguelvazquezmartin</td>
						</tr>
						<tr>
							<td>17</td>
							<td><a href="./contarConsonantes_adrismm.jsp">Contar consonantes.</a></td>
							<td>@adrismm</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	
	</body>
</html>

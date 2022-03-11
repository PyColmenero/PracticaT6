<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="es">

    <head>
	
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calculadora</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles.css">
		<style>
			.botonAccion {
				text-transform:uppercase !important;
				 
			    display: inline-block;
			    font-weight: 400;
			    line-height: 1.5;
			    color: #212529;
			    text-align: center;
			    text-decoration: none;
			    vertical-align: middle;
			    cursor: pointer;
			    -webkit-user-select: none;
			    -moz-user-select: none;
			    user-select: none;
			    background-color: transparent;
			    border: 1px solid transparent;
			    padding: .375rem 1rem;
			    font-size: 1rem;
			    transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
			    -webkit-transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
			    -moz-transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
			    -ms-transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
			    -o-transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
			    box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
			    width:auto !important;
			    margin-bottom:0 !important;
			    border-radius:0!important;
			}
			
			.botonAccion
			{	
				background-color: #212529;
			    border-color: #212529;
				color: white;
				font-weight: 600;
			}
			
			.botonAccion:hover {
			    background-color: black;
			    border-color: black;
			}
		</style>
		
    </head>

    <body>
    
        <div class="container my-5">
            <div class="row">
                <div class="col-12 col-md-8 col-lg-6 mx-auto">
                    <main class="bg-light py-3 px-4 border rounded">

                        <h1>Calculadora</h1>
                        <h2 class="author fs-5 border-bottom d-inline">Alejandro Infante Cruz</h2>
                        <p id="descripcion">Esta calculadora te permite realizar operaciones con números enteros</p>

					<%
						if (request.getAttribute("alertaKO") != null) {
					%>
							<div class="alert-danger text-center mb-5 mx-4 py-3" role="alert">
								<%				
									out.println(request.getAttribute("alertaKO")); 
								%>
							</div>
					<%
					}
	
						if (request.getAttribute("alertaOK") != null) {
					%>
							<div class="alert-success text-center mb-5 mx-4 py-3" role="alert">
								<%				
									out.println(request.getAttribute("alertaOK")); 
								%>
							</div>
					<%
					}
					%>

                        <form action="Calculadora_infantecruzalejandro" method="POST">

                            <div id="inputs" class="mb-4">
                           		<!-- Aquí los inputs... -->
                           		<div class="mb-3">
   									<label for="num1" class="form-label">Primer número:</label>
    								<input type="number" class="form-control" id="num1" step="0.01" name="num1" placeholder="Introduce un número entero" autofocus />
 								</div>
                           		<div class="mb-3">
   									<label for="num2" class="form-label">Segundo número:</label>
    								<input type="number" class="form-control" id="num2" name="num2" placeholder="Introduce otro número entero" />
 								</div>
                            </div>

					<%
						if (request.getAttribute("respuesta") != null) {
					%>
							<div id="respuesta" class="my-5">
								<hr/>
								<fieldset disabled class="mt-4">
									<label for="resultado" class="form-label">Resultado:</label>
									<input type="text" class="form-control" id="resultado" name="resultado" disabled value='<% out.println(request.getAttribute("respuesta")); %>'/>
								</fieldset>
							</div>
					<%
					}
					%>
                            <div class="d-flex justify-content-between">
                                <a href="./Calculadora_infantecruzalejandro.jsp" class="botonenviar px-3"><strong>CE</strong></a>
		                        <button class="botonAccion px-4" type="submit" id="division" name="division">:</button>
		                        <button class="botonAccion px-4" type="submit" id="multiplicacion" name="multiplicacion">x</button>
		                        <button class="botonAccion px-4" type="submit" id="resta" name="resta">-</button>
		                        <button class="botonAccion px-4" type="submit" id="suma" name="suma">+</button>
                                <a href="./" class="botoncancelar px-4"><strong>Volver</strong></a>
                            </div>

                        </form>
                    </main>
                </div>
            </div>
        </div>

    </body>

    </html>
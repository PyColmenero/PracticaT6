<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>toLowerCase</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles.css">
    </head>

    <body>
        <div class="container my-5">
            <div class="row">
                <div class="col-12 col-md-8 col-lg-6 mx-auto">
                    <main class="bg-light py-3 px-4 border rounded">

                        <h1>Hola, estas en toLowerCase</h1>
                        <h2 class="author fs-5 border-bottom d-inline">Alicia Vázquez Gómez</h2>
                        <p id="descripcion">Vamos a convertir cualquier cadena en Minúsculas</p>
                        
                        <%
						if (request.getAttribute("KO") != null) {
						%>
							<div class="alert-danger m-5 p-3" role="alert">
								<%				
									out.println(request.getAttribute("KO")); 
								%>
							</div>
						<%
						}
		
							if (request.getAttribute("OK") != null) {
						%>
								<div class="alert-success m-5 p-3" role="alert">
									<%				
										out.println(request.getAttribute("OK")); 
									%>
								</div>
						<%
						}
						%>


                        <form action="toLowerCase_alivazgom" method="post">

                            <div id="inputs" class="mb-4">
                               
								<div class="">
									<label class='p-2'>Escribe una cadena en MAYÚSCULAS:</label><br/>
									<input class="form-control" type="text" name="cadena" autofocus />
								</div>

                            </div>
                            
                            <%
						if (request.getAttribute("minuscula") != null) {
						%>
							<h5>La cadena en minúscula es: </h5> <p>
								<%				
									out.println(request.getAttribute("minuscula")); 
								%>
							</p>
						<%
						}
		
						%>
								

                            <div class="d-flex justify-content-between">
                                <button class="botonenviar">ENVIAR</button>
                                <a href="./" class="botoncancelar">VOLVER</a>
                            </div>

                        </form>
                    </main>
                </div>
            </div>
        </div>

    </body>

    </html>
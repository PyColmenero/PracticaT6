<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Iniciales</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles.css">
    </head>

    <body>

        <!-- Hay que cambiar el <title> en el <head> -->
        <!-- Hay que cambiar el interior del <h1> por el nombre de tu proyecto -->
        <!-- Hay que cambiar la descripción -->
		<!-- Hay que cambiar el <h2> por tu nombre -->


        <div class="container my-5">
            <div class="row">
                <div class="col-12 col-md-8 col-lg-6 mx-auto">
                    <main class="bg-light py-3 px-4 border rounded">

                        <h1>Iniciales</h1>
                        <h2 class="author fs-5 border-bottom d-inline">Iván Triguero Curado</h2>
                        <p id="descripcion">Tomaremos un nombre y apellidos por un input y devolveremos las iniciales.</p>


                        <form action="Iniciales_ivantriguero" method="post">

                            <div id="inputs" class="mb-4">
                                <!-- Aquí los inputs... -->
                           		<div class="mb-3">
   									<label for="nombre" class="form-label">Nombre completo:</label>
    								<input type="text" class="form-control" id="nombre" name="nombre" placeholder="Introduce tu nombre completo" autofocus />
 								</div>
                            </div>

                            <div class="d-flex justify-content-between">
                                <button class="botonenviar">ENVIAR</button>
                                <a href="./" class="botoncancelar">VOLVER</a>
                            </div>

                        </form>
                        <%if(request.getAttribute("iniciales")!=null){%>
                        <div class="mt-3">
                        	<strong>Respuesta:</strong><br>
                        	<%=request.getAttribute("iniciales") %>
                        </div>
                        	
                        	
                        <%}%>
                    </main>
                </div>
            </div>
        </div>

    </body>

    </html>
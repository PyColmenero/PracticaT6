<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Multiplicar</title>
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

                        <h1>Multiplicar</h1>
                        <h2 class="author fs-5 border-bottom d-inline">Antonio</h2>
                        <p id="descripcion">...</p>


                        <form action="Multiplicar_antoniorg1608" method="post">

                            <div id="inputs" class="mb-4">
                                <!-- Aquí los inputs... -->
								<input type="number" name="numero1" placeholder="Número 1"/>

								<input type="number" name="numero2" placeholder="Número 2"/>
								
                            </div>

							<%
							if(request.getAttribute("resultado_multiplicar")!=null){ // si hay mensaje
								out.println(request.getAttribute("resultado_multiplicar"));	 // lo muestro
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
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Invertir Orden</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
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

                        <h1>Invierte el orden</h1>
                        <h2 class="author fs-5 border-bottom d-inline">Miguel Vázquez Martín</h2>
                        <p id="descripcion">Consiste en invertir el orden de los caracteres introducidos</p>


                        <form action="InvertirOrden_miguelvazquezmartin" method="post">

                            <div id="inputs" class="mb-4">
                                <label>Escriba aquí para invertir el orden</label> 
								<input class="form-control" type="text"
								id="texto" name="texto" autofocus required/> 
                            </div>
                            
                            <div>
                           
                             <%
                             if (request.getAttribute("resultado") != null) 
                             {
                            		out.println("Tu resultado es: <h3>" + request.getAttribute("resultado") + "</h3>");
                             }
							%>
						
                            </div>
                           

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
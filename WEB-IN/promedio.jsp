<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Ingrese su descripción aquí"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|fire-animation|3d|3d-float" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Bienvenidos</title>
</head>
<body>
<div class="jumbotron jumbotron-fluid bg-dark text-white">
        <div class="container p-3 my-3 bd-dark">
            <h1 class="text-center font-effect-3d-float"><b>Ejercicio 5</b></h1>
            <h2 class="text-center font-effect-3d-float" style="padding:50px;">El promedio es: </h2>
        </div>
    </div>
    <%
        float cantidadnotas=Integer.parseInt(request.getParameter("total"));
        float promedio=0;
        float nota = 0;
        for(int i=0; i < cantidadnotas; i++){
            nota =Float.parseFloat(request.getParameter("nota"+i));
            if((nota >=0 && nota<=20)){
            /* out.println(nota); */
            promedio = nota+promedio;
            /* out.println(promedio); */
            }else{
                String mensaje = "La calificacion no puede ser mayor a 20";
        
        /* int resultado = (notatotal/cantidadnotas) */
    %>
        
        <%-- <script>
            alert("<%=mensaje %>")
            location.href="http://localhost:8080/Trabajo/WEB-IN/punto5.jsp"
            
        </script> --%>
    <%       
            }
        }
        /* out.println(nota); */
        if(nota>=0 && nota<=20){
            float resultado = (promedio/cantidadnotas);
            if(resultado >= 13){
                String aprobado = "Estas Aprobado";
        
    %>
            <%-- <label><%=cantidadnotas %> </label> --%>
            <%-- <label>promedio es: <%=resultado%> </label> --%>
            <div class="jumbotron jumbotron-fluid bg-mute text-white">
                <p class="h2 text-center font-effect-3d-float text-dark">El Promedio es: <%=resultado %></p>
                <div class="alert alert-success text-center">
                    <%=aprobado %>    
                </div>
            </div>
            <div class="text-center mt-4 mb-3">
                <a href="../prueba.html" class="btn btn-dark">Volver al menu principal</a>
            </div>
    <%

        }else{
            String reprobado = "Estas Reprobado";
        
    %>
        <div class="jumbotron jumbotron-fluid bg-mute text-white">
            <p class="h2 text-center font-effect-3d-float text-dark">El Promedio es: <%=resultado %></p>
            <div class="alert alert-danger text-center">
                <%=reprobado %>    
            </div>
        </div>
        <div class="text-center mt-4 mb-3">
                <a href="../prueba.html" class="btn btn-dark">Volver al menu principal</a>
            </div>
            
    <%
        }
    %>
    <%
            
        }else{
            
    %>
        <div class="alert alert-danger text-center">
            <strong>ERROR la nota minima es de 0 y la maxima es de 21</strong>
            </div>
        </div>
        <div class="text-center mb-3">
            <a href="../WEB-IN/punto5.jsp" class="btn btn-dark">Volver al menu principal</a>
        </div>
    <%
        }
    %>
        
        
        
        












<%----------------------------------------------------------------------- FOOTER------------------------------------------------------------------------------------------ --%>
<footer class="bg-dark text-white text-center py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h5>Acerca de Nosotros</h5>
                    <p>Estudiante de las Unidades Tecnologicas de Santander</p>
                </div>
                <div class="col-md-4">
                    <h5>Enlaces</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white"></a></li>
                        <li><a href="#" class="text-white"></a></li>
                        <li><a href="#" class="text-white"></a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Contacto</h5>
                    <p>Email: ejemplo@ejemplo.com</p>
                    <p>Teléfono: +57 123456789</p>
                </div>
            </div>
            <div class="mt-4">
                <p><svg xmlns="http://www.w3.org/2000/svg" id="Outline" viewBox="0 0 24 24" width="20" height="20"><path d="M12,12A6,6,0,1,0,6,6,6.006,6.006,0,0,0,12,12ZM12,2A4,4,0,1,1,8,6,4,4,0,0,1,12,2Z"/><path d="M12,14a9.01,9.01,0,0,0-9,9,1,1,0,0,0,2,0,7,7,0,0,1,14,0,1,1,0,0,0,2,0A9.01,9.01,0,0,0,12,14Z"/></svg>
                &copy; Cristofer Munoz Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    <script src="../js/index.js"></script>
</body>
</html>

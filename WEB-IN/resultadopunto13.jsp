<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Ingrese su descripción aquí" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|fire-animation|3d|3d-float"
        rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Bienvenidos</title>
</head>

<body>
    <!-- Header Section -->
    <div class="jumbotron jumbotron-fluid bg-dark text-white">
        <div class="container p-3 my-3 bd-dark">
            <h1 class="text-center font-effect-3d-float"><b>Ejercicio 13</b></h1>
            <h2 class="text-center font-effect-3d-float" style="padding:50px;">Solicitud</h2>
        </div>
    </div>
    <%
        String cod=request.getParameter("codigo");
        String men = request.getParameter("men");
        String sex = request.getParameter("sexo");

        String servicio="";
        String [] seleccion= request.getParameterValues("servicio");

        if(seleccion!= null){
            for(int i=0; i<seleccion.length; i++){
                servicio+="-"+seleccion[i];
            }
        }else{
            servicio = "no selecciono ningun servicio";
        }

        String depto ="";
        String [] select= request.getParameterValues("depto");
        for(int j=0; j<select.length;j++){
            depto=select[j];
        }
    %>

    <div class="container mt-5">
        <div class="card shadow-sm">
            <div class="card-header bg-dark text-white">
                <h4 class="mb-0">Detalles de la Solicitud</h4>
            </div>
            <div class="card-body">
                <p class="card-text">La solicitud de: <strong><%=cod %></strong></p>
                <p class="card-text">Sexo: <strong><%=sex %></strong></p>
                <p class="card-text">Que se refiere a: <strong><%=servicio %></strong></p>
                <p class="card-text">Del departamento de: <strong><%=depto %></strong></p>
                <p class="card-text">Descripcion del servicio: <strong><%=men %></strong></p>
            </div>
        </div>
    </div>
    <div class="text-center mt-4 mb-3">
            <a href="../prueba.html" class="btn btn-dark text-white">Volver al menu principal</a>
    </div>






<!----------------------------------------------------------FOOTER-------------------------------------------------------->
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
            <p><svg xmlns="http://www.w3.org/2000/svg" id="Outline" viewBox="0 0 24 24" width="20" height="20">
                    <path d="M12,12A6,6,0,1,0,6,6,6.006,6.006,0,0,0,12,12ZM12,2A4,4,0,1,1,8,6,4,4,0,0,1,12,2Z" />
                    <path
                        d="M12,14a9.01,9.01,0,0,0-9,9,1,1,0,0,0,2,0,7,7,0,0,1,14,0,1,1,0,0,0,2,0A9.01,9.01,0,0,0,12,14Z" />
                </svg>
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
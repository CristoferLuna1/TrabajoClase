<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|fire-animation|3d|3d-float"
        rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Bienvenidos</title>
    <div class="jumbotron jumbotron-fluid text-white" style="background-image: url('https://www.transparenttextures.com/patterns/brushed-alum.png'); background-size: cover; background-blend-mode: multiply;">
        <div class="container text-center">
            <h1 class="font-effect-3d-float display-4">Bienvenidos</h1>
            <p class="lead">En el siguiente menú encontrarás los diversos trabajos realizados:</p>
        </div>
    </div>
</head>
<body class="bg-secondary">
    <!-- Contenedor principal -->
    <div class="container">
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <td class="h4 text-center">Números</td>
                </tr>
                <tr>
                    <%
                        for(int i=0; i<10; i++){
                            out.println("<th>" + i + "</th>");
                        }
                    %>
                </tr>
            </thead>
        </table>
    </div>
    <div class="container text-center" style="padding: 10px;">
        <a href="../prueba.html" class="btn btn-dark">Volver</a>
    </div>
<footer class="bg-dark text-white text-center py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h5>Acerca de Nosotros</h5>
                    <p>Estudiante de las Unidades Tecnológicas de Santander</p>
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
                <p>&copy; Paula Suarez. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    <script src="/js/index.js"></script>

</body>

</html>
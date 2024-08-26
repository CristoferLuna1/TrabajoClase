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
            <h1 class="text-center font-effect-3d-float"><b>Ejercicio 15</b></h1>
            <h2 class="text-center font-effect-3d-float" style="padding:50px;">Comprobante de Venta</h2>
        </div>
    </div>

    <%
        String nom =request.getParameter("nombre");
        String ape=request.getParameter("apellido");
        String men = request.getParameter("men");
String gen = request.getParameter("genero");
int t1, t2, t3, t4, t5;
double subtotal, impuesto;
int cantidad1 = Integer.parseInt(request.getParameter("cant1"));
int punitario1 = Integer.parseInt(request.getParameter("pu1"));
int cantidad2 = Integer.parseInt(request.getParameter("cant2"));
int punitario2 = Integer.parseInt(request.getParameter("pu2"));
int cantidad3 = Integer.parseInt(request.getParameter("cant3"));
int punitario3 = Integer.parseInt(request.getParameter("pu3"));
int cantidad4 = Integer.parseInt(request.getParameter("cant4"));
int punitario4 = Integer.parseInt(request.getParameter("pu4"));
int cantidad5 = Integer.parseInt(request.getParameter("cant5"));
int punitario5 = Integer.parseInt(request.getParameter("pu5"));

// Tomo datos del checkbox
String prod = "";
String[] seleccion = request.getParameterValues("prod");
if (seleccion != null) {
    for (int i = 0; i < seleccion.length; i++) {
        prod += " - " + seleccion[i];
    }
} else {
    prod = "No seleccionó ningún producto";
}

// Tomo datos del select
String pdto1 = "";
String pdto2 = "";
String pdto3 = "";
String pdto4 = "";
String pdto5 = "";
String[] select1 = request.getParameterValues("pdto1");
String[] select2 = request.getParameterValues("pdto2");
String[] select3 = request.getParameterValues("pdto3");
String[] select4 = request.getParameterValues("pdto4");
String[] select5 = request.getParameterValues("pdto5");
for (int i = 0; i < select5.length; i++) {
    pdto1 = select1[i];
    pdto2 = select2[i];
    pdto3 = select3[i];
    pdto4 = select4[i];
    pdto5 = select5[i];
}   
%>
<div class="container mt-5">
    <div class="card border-0 shadow-lg">
        <div class="card-header bg-gradient-primary text-white text-center">
            <h4 class="mb-0">Factura de Compra</h4>
        </div>
        <div class="card-body">
            <div class="row mb-4">
                <div class="col-md-6">
                    <p class="h5">Cliente: <span class="text-primary"><%= nom %> <%= ape %></span></p>
                    <p class="h6"><strong>Genero:</strong> <span class="text-info"><%= gen %></span></p>
                </div>
                <div class="col-md-6 text-right">
                    <p class="h6"><strong>Productos solicitados:</strong></p>
                    <p class="text-info"><%= prod %></p>
                </div>
            </div>

            <div class="table-responsive">
                <table class="table table-hover table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Precio Unitario (S/)</th>
                            <th>Subtotal (S/)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%= pdto1 %></td>
                            <td><%= cantidad1 %></td>
                            <td><%= punitario1 %></td>
                            <td><% t1 = cantidad1 * punitario1; out.print(t1); %></td>
                        </tr>
                        <tr>
                            <td><%= pdto2 %></td>
                            <td><%= cantidad2 %></td>
                            <td><%= punitario2 %></td>
                            <td><% t2 = cantidad2 * punitario2; out.print(t2); %></td>
                        </tr>
                        <tr>
                            <td><%= pdto3 %></td>
                            <td><%= cantidad3 %></td>
                            <td><%= punitario3 %></td>
                            <td><% t3 = cantidad3 * punitario3; out.print(t3); %></td>
                        </tr>
                        <tr>
                            <td><%= pdto4 %></td>
                            <td><%= cantidad4 %></td>
                            <td><%= punitario4 %></td>
                            <td><% t4 = cantidad4 * punitario4; out.print(t4); %></td>
                        </tr>
                        <tr>
                            <td><%= pdto5 %></td>
                            <td><%= cantidad5 %></td>
                            <td><%= punitario5 %></td>
                            <td><% t5 = cantidad5 * punitario5; out.print(t5); %></td>
                        </tr>
                        <tr class="font-weight-bold text-right">
                            <td colspan="3">Total</td>
                            <td>$ <% subtotal = t1 + t2 + t3 + t4 + t5; out.print(subtotal); %></td>
                        </tr>
                        <tr class="font-weight-bold text-right text-success">
                            <td colspan="3">IGV (18%)</td>
                            <td>$ <% impuesto = (0.18) * subtotal; out.print(impuesto); %></td>
                        </tr>
                        <tr class="font-weight-bold text-right text-danger">
                            <td colspan="3">Neto a pagar</td>
                            <td>$ <%= subtotal + impuesto %></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="mt-4">
                <h5>Observaciones:</h5>
                <p class="border p-3 bg-light"><%= men %></p>
            </div>
        </div>
        <div class="card-footer bg-white text-center">
            <small class="text-muted">Gracias por su compra</small>
        </div>
    </div>
</div>
<div class="text-center mt-4 mb-3">
            <a href="../prueba.html" class="btn btn-dark">Volver al menu principal</a>
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
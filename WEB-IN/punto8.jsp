<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|fire-animation|3d|3d-float" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
<title>Bienvenidos</title>
<html>
<div class="jumbotron jumbotron-fluid bg-dark text-white">
  <div class="container p-3 my-3 bd-dark">
    <h1 class="font-effect-3d-float" style="text-align: center;"><b>Ejercicio 8</b></h1>
    <h2 class="font-effect-3d-float" style="padding:50px; text-align:center;">Algoritmo que calcule y muestre el sueldo neto de un trabajador.</h2>
  </div>
</div>
</head>
<body>
<div class="container">
<form action="../WEB-IN/resultadopunto8.jsp">
        <%
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        if(cantidad != 0){
        %>
        <div class="bg-dark mb-3 px-5 text-center rounded text-white">
            <label for="base" class="form-label" style="font-weight: 700;">Ingrese los datos de los empleados: </label><br>
        </div>
        <%
        for(int i =0; i<cantidad; i++){
                    
                
        %>
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <th class="h4"style="text-align:center;">Nombre:</th>
                    <th class="h4"style="text-align:center;"><input class="form-control" type="text" name="nombre<%=i%>" required></input></th>
                </tr>
                <tr>
                    <th class="h4"style="text-align:center;">Sueldo:</th>
                    <td class="h4"style="text-align:center;"><input type="text" class="form-control" id="base" name="sueldo<%=i%>" required pattern="\d+(\.\d{1,2})?"
                    title="Por facor, ingrese un numero valido"
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"> </td>
                </tr>
                <tr>
                    <th class="h4"style="text-align:center;">Horas extras:</th>
                    <th class="h4"style="text-align:center;"><input type="text" class="form-control" id="base" name="horas<%=i%>" required pattern="\d+(\.\d{1,2})?"
                    title="Por facor, ingrese un numero valido"
                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></th>
                </tr>
            </thead>
        </table>
        <%
            }}else{
                String mensaje = "La cantidad de empleados no puede ser 0";
            
        %>
        <%
            }if(cantidad != 0){

        %>
        <div class="text-center mb-3 my-4">
            <input class="btn btn-dark mb-3" type="submit" value="calcular"><br>
            <a href="../prueba.html" class="btn btn-dark">Volver al menu principal</a><br><a href="../WEB-IN/formula.jsp" class="btn btn-dark mt-4">Volver a la cantidad de empleados</a>
        </div>
        <%
            }else{

            
        %>
        <div class="alert alert-danger mx-5">
            <strong><p class="text-center">ERROR NO PUEDEN EXISTIR 0 EMPLEADOS</p></strong>
            </div>
        </div>
        <div class="text-center">
            <a href="../WEB-IN/formula.jsp" class="btn btn-dark mb-3">Volver a la cantidad de empleados</a>
        </div>
        <%
            }
        %>
        <input type="hidden" name="total" value="<%=cantidad %>">
        
</form>
</div>
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

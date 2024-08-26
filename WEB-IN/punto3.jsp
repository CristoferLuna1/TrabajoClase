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
  <link href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|fire-animation|3d|3d-float" rel="stylesheet">
  
  <link rel="stylesheet" href="assets/css/style.css">
  <title>Bienvenidos</title>
  <div class="jumbotron jumbotron-fluid bg-dark text-white">
    <h1 class="font-effect-3d-float" style="text-align: center;"><b>Bienvenidos</b></h1>
    <h2 class="font-effect-3d-float" style="text-align:center;"><b>Aqui encontraras el juego de 7 PUM</b></h2>
  </div>
</head>
   <div class="container my-4">
    <div class="row">
        <%
            for (int i = 0; i < 100; i++) {
                if ((i % 7 == 0) || (i % 10 == 7)) {
                    String hola = "PUM";
        %>
            <div class="col-2 mb-2">
                <div class="alert alert-info text-center mb-0">
                    <strong><%= hola %></strong>
                </div>
            </div>
        <%
                } else {
        %>
            <div class="col-2 mb-2">
                <div class="alert alert-secondary text-center mb-0">
                    <%= i %>
                </div>
            </div>
        <%
                }
            }
        %>
    </div>
</div>
<div class="container" style="text-align: center; padding: 10px;">
        <a href="../prueba.html" class="btn btn-dark">Volver</a>
    </div>  
<!-- ////////////////////////////////////////////FOOTER///////////////////////////////////////////////////////////////////// -->
  <footer class="bg-dark text-white text-center py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h5>Acerca de Nosotros</h5>
          <p>Estudiante de las Unidades tecnologicas de santander</p>
        </div>
        <div class="col-md-4">
          <h5></h5>
          <ul class="list-unstyled">
            <li><a href="#" class="text-white"></a></li>
            <li><a href="#" class="text-white"></a></li>
            <li><a href="#" class="text-white"></a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h5>Contacto</h5>
          <p>Email: ejemplo@ejemplo.com</p>
          <p>Teléfono:+57 123456789</p>
        </div>
      </div>
      <div class="mt-4">
        <?xml version="1.0" encoding="UTF-8"?>
        <p><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1"
          x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve"
          width="22" height="22">
          <g>
            <circle cx="256" cy="128" r="128" />
            <path
              d="M256,298.667c-105.99,0.118-191.882,86.01-192,192C64,502.449,73.551,512,85.333,512h341.333   c11.782,0,21.333-9.551,21.333-21.333C447.882,384.677,361.99,298.784,256,298.667z" />
          </g>
        </svg>&copy; Cristofer Muñoz Todos los derechos reservados.</p>
      </div>
    </div>
  </footer>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>

</html>
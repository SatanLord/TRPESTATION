<?php
session_start();

if (!isset($_SESSION['user'])) {
  header('Location: login.html');
}
 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Estacionamiento</title>
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/funciones.js"></script>
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.css">
    <script src="css/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/estilos.css">
  </head>
  <body>
    <header>
      <h1 align="center">Estacionamiento</h1>
    </header>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Menu</a>
        </div>
        <ul class="nav navbar-nav">
          <li><a class="btn" onclick="ingresoPatente()">Ingresar auto</a></li>
          <li><a class="btn" onclick="estacionados()">Estacionados</a></li>
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Opciones <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a class="btn" onclick="importes()">Importes</a></li>
              <li><a class="btn" onclick="usuarios()">Usuarios</a></li>
            </ul>
          </li>
          <li><a>Espacios disponibles</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a <span class="glyphicon glyphicon-user"></span> <?php echo " ".$_SESSION['user'] ?></a></li>
          <li><a onclick="egresoUsuario()"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
        </ul>
      </div>
    </nav>
    <section id="contenido">

    </section>

    <!-- Modal Mensaje -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title" id="titleModal"></h4>
          </div>
          <div class="modal-body"id="contentModal">

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>

      </div>
    </div>
    <!-- Termina Modal Mensaje -->
    <!-- <footer></footer> -->
  </body>
</html>

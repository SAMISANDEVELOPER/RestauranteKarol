<%-- 
    Document   : Nuevo
    Created on : 28-sep-2021, 15:20:54
    Author     : SamiSanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Reservas/css/estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="../Reservas/css/bootstrap.min.css" />
        <script src="../Reservas/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="./css/normalize.css">

	<!-- MDBootstrap V5 -->
	<link rel="stylesheet" href="./css/mdb.min.css">

	<!-- Font Awesome V5.15.1 -->
	<link rel="stylesheet" href="./css/all.css">

	<!-- Sweet Alert V10.13.0 -->
	<script src="./js/sweetalert2.js" ></script>

	<!-- General Styles -->
	<link rel="stylesheet" href="./css/style.css">
    </head>
        <title>NUEVO REGISTRO</title>
    </head>
    <body>
        <nav class="header-navbar full-box poppins-regular font-weight-bold" >
	            <ul class="list-unstyled full-box">
	                <li>
	                    <a href="index.jsp" >Inicio<span class="full-box" ></span></a>
	                </li>
	                <li>
	                    <a href="menu.jsp" >Menú<span class="full-box" ></span></a>
	                </li>
                        <li>
	                    <a href="EventosController" >Reservas<span class="full-box" ></span></a>
	                </li>
	            </ul>
	</nav>
       
        <h2 style="border:2px solid DodgerBlue;"" class="text-center">NUEVO REGISTRO</h2>
        <form action="EventosController?accion=insertar"  text-align: center method="POST" autocomplete="off">
            <table border="6" witdth="40%"   class="table table-hover" class="table table-bordered">
            
           

            <div id="from"class="text-center">
            <p>
                Codigo:
                <input id="codigo" name="codigo" type="text"/>
            </p>
            </div>

            <div id="reply"class="text-center">
             <p>
                Nombre:
                <input id="nombre" name="nombre" type="text"/>
            </p>
            </div>

            <div id="message"class="text-center">
            <p>
                Cupos:
                <input id="cupos" name="cupos" type="text"/>
            </p>
            </div>
            <div id="message"class="text-center">
              <p>
                Precio:
                <input id="precio" name="precio" type="text"/>
            </p>
            </div>

            <div  class="button"class="text-center">
             <button class="btn btn-primary active" id="guardar" name="guardar" type="submit"style="display: block; margin: 0 auto;">Guardar</button>
            </div>
        </form>
        	<div class="container container-web-page">
	    <div class="row justify-content-md-center">
	        <div class="col-12 col-md-6">
	            <figure class="full-box">
	                <img src="./assets/img/registro.png" alt="registro" class="img-fluid">
	            </figure>
	        </div>
	        <div class="w-100"></div>
	        <div class="col-12 col-md-6">
	            <h3 class="text-center text-uppercase poppins-regular font-weight-bold">Crea tu cuenta</h3>
	            <p class="text-justify">
	                Crea tu cuenta para poder realizar pedidos de platos hasta la puesta de tu casa, es muy fácil y rápido.
	            </p>
	            <p class="text-center">
	                <a href="registro.jsp" class="btn btn-primary" >Crear cuenta</a>
	            </p>
	        </div>
	    </div>
	</div>
               <footer class="footer">
	    <div class="container">
	        <div class="row">
	            <div class="col-12 col-md-4">
	                <ul class="list-unstyled" >
	                    <li><h5 class="font-weight-bold" ><i class="far fa-copyright"></i> Sandra Sanchez</h5></li>
	                    <li> Todos los derechos reservados </li>
	                </ul>
	            </div>
	            <div class="col-12 col-md-4">
	                <ul class="list-unstyled" >
	                    <li><h5 class="font-weight-bold" >Bogotá</h5></li>
	                    <li><i class="fas fa-map-marker-alt fa-fw"></i> Bogotá Colombia</li>
	                </ul>
	            </div>
	            <div class="col-12 col-md-4">
	                <ul class="list-unstyled" >
	                    <li><h5 class="font-weight-bold" >Siguenos en:</h5> </li>
	                    <li>
	                        <a href="https://www.facebook.com/sandra.m.parra.792" class="footer-link" target="_blank" >
	                            <i class="fab fa-facebook fa-fw"></i> Facebook
	                        </a>
	                    </li>

	                    <li>
	                        <a href="https://www.youtube.com/channel/UCHmcxEZWAWemQBIVhYFUybQ" class="footer-link" target="_blank" >
	                            <i class="fab fa-youtube fa-fw"></i>
	                                Youtube
	                        </a>
	                    </li>
	                </ul>
	            </div>
	        </div>
	    </div>
	</footer>
	
    </body>

</html>

<%-- 
    Document   : modifcar
    Created on : 28-sep-2021, 15:21:13
    Author     : SamiSanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESERVAS RESTAURANTE KAROL</title>
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
        <title>MODIFICAR REGISTRO</title>
    </head>
    <body>
      <h2>MODIFICAR REGISTRO</h2>
        <form action="EventosController?accion=actualizar"  method="POST" autocomplete="off">
            <input id="id" name="id" type="hidden" value="<c:out value="${evento.id}"/>"/>
            <p>
                Codigo:
                <input id="codigo" name="codigo" type="text" value="<c:out value="${evento.codigo}"/>"/>
            </p>
            
            <p>
                Nombre:
                <input id="nombre" name="nombre" type="text" value="<c:out value="${evento.nombre}"/>"/>
            </p>
            
            <p>
                Cupos:
                <input id="cupos" name="cupos" type="text" value="<c:out value="${evento.cupos}"/>"/>
            </p>
            
            <p>
                Precio:
                <input id="precio" name="precio" type="text" value="<c:out value="${evento.precio}"/>"/>
            </p>
            
             <br/><br/>
            
            <button id="guardar" name="guardar" type="submit">Guardar</button>
            
            
        </form>
    </body>
    <div class="container container-web-page">
	    <h4 class="text-center text-uppercase poppins-regular font-weight-bold">Nuestros servicios</h4>
	    <br>
	    <div class="row">
	        <div class="col-12 col-sm-6 col-md-4">
	            <p class="text-center"><i class="fas fa-shipping-fast fa-5x"></i></p>
	            <h5 class="text-center text-uppercase poppins-regular font-weight-bold">Envíos a domicilio</h5>
	            <p class="text-center"></p>
	        </div>
	        <div class="col-12 col-sm-6 col-md-4">
	            <p class="text-center"><i class="fas fa-utensils fa-5x"></i></p>
	            <h5 class="text-center text-uppercase poppins-regular font-weight-bold">Cocinando Recuerdos</h5>
	            <p class="text-center"></p>
	        </div>
	        <div class="col-12 col-sm-6 col-md-4">
	            <p class="text-center"><i class="fas fa-store-alt fa-5x"></i></p>
	            <h5 class="text-center text-uppercase poppins-regular font-weight-bold">Reservaciones de local</h5>
	            <p class="text-center"></p>
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


	<!-- MDBootstrap V5 -->
	<script src="./js/mdb.min.js" ></script>

	<!-- General scripts -->
	<script src="./js/main.js" ></script>
        
</html>

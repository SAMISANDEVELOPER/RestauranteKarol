<%-- 
    Document   : index
    Created on : 28-sep-2021, 15:20:16
    Author     : SamiSanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>RESERVAS RESTAURANTE KAROL</title>
        <link href="../Reservas/css/estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="../Reservas/css/bootstrap.min.css" />
        <script src="../Reservas/js/bootstrap.min.js"></script>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    
    <body>
        
	<!-- Header -->
	<header class="header full-box">
	    <div class="header-brand text-center full-box">
	        <a href="index.jsp"></a>
	    </div>

	    <div class="header-options full-box">
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
	        <div class="header-button full-box text-center btn-login-menu" >
	            <i class="fas fa-user-alt" onclick="show_popup_login()" data-mdb-toggle="tooltip" data-mdb-placement="bottom" title="Login" ></i>
	            <div class="div-bordered popup-login">

	                <!-- Inicio de sesion -->
	                <span class="text-center poppins-regular font-weight-bold">Inicio de sesión</span>
	                <form class="full-box" action="">
	                    <div class="form-outline mb-4">
	                        <input type="email" class="form-control" name="login_email_cliente" id="login_email" maxlength="70" required="" placeholder="Email" >
	                    </div>
	                    <div class="form-outline mb-4">
	                        <input type="password" class="form-control" name="login_clave_cliente" id="login_password" pattern="[a-zA-Z0-9$@.-]{7,100}" maxlength="100" required="" placeholder="Contraseña" >
	                    </div>
	                    <p class="text-center">
	                        <button class="btn btn-info btn-sm w-100">Iniciar sesión</button>
	                    </p>
	                </form>
	                <hr>
	                <p class="text-center full-box">¿No tienes cuenta? <a href="registro.jsp">Regístrate aquí</a></p>
        </header>
        <h1 class="text-center">CELEBRA CON NOSOTROS TU FECHA ESPECIAL</h1>
        <a href ="EventosController?accion=nuevo">NUEVO REGISTRO</a>
        <br/><br/>
        <table border="8" witdth="40%"   class="table table-hover" class="table table-bordered">
            <thead>
                <tr>
                    <th>CODIGO DE RESERVA</th>
                    <th>NOMBRE DEL EVENTO</th>
                    <th>CUPOS  DISPONIBLES</th>
                    <th>PRECIO DEL EVENTO</th>
                    <th>MODIFCA TU RESERVA </th>
                    <th>ELIMINA TU RESERVA</th>
                </tr>
           </thead>
           <tbody>
               <c:forEach var="evento" items="${lista}">
                   <tr>
                        <td><c:out value="${evento.codigo}" /> </td>
                        <td><c:out value="${evento.nombre}" /> </td>
                         <td><c:out value="${evento.cupos}" /> </td>
                         <td><c:out value="${evento.precio}" /> </td>
                         <td><a href="EventosController?accion=modificar&id=<c:out value="${evento.id}"/>">Modificar</a></td>
                         <td><a href="EventosController?accion=eliminar&id=<c:out value="${evento.id}"/>">Eliminar</a></td>
                    </tr>
               </c:forEach>
           </tbody>
        </table>
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
        
    </body>
</html>
        
    


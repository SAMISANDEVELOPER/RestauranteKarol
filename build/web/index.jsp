<%-- 
    Document   : index.jsp
    Created on : 20-oct-2021, 20:46:32
    Author     : SamiSanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Restaurante Karol</title>
    <!-- Normalize V8.0.1 -->
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
	          <a href="index.jsp">
	            <img src="./assets/img/logo.jpeg"align="left" alt="logochef">
	        </a>
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


	<!-- Content -->
	<div class="banner">
	    <div class="banner-body">
	        <h3 class="text-uppercase">BIENVENIDOS AL RESTAURANTE KAROL</h3>
	        <p>Aquí se come como en casa</p>
	        <a href="menu.jsp" class="btn btn-warning"><i class="fas fa-hamburger fa-fw"></i> &nbsp; Ir al menu</a>
	    </div>
	</div>

	<div class="container container-web-page">
	    <h4 class="text-center text-uppercase poppins-regular font-weight-bold">Nuestros servicios</h4>
	    <br>
	    <div class="row">
	        <div class="col-12 col-sm-6 col-md-4">
	            <p class="text-center"><i class="fas fa-shipping-fast fa-5x"></i></p>
	            <h5 class="text-center text-uppercase poppins-regular font-weight-bold">Envíos a domicilio</h5>
	            <p class="text-center">Programa para recoger o pide tu domicilio al watsapp 3057124803.No te quedes sin disfrutar la receta original en casa</p>
	        </div>
	        <div class="col-12 col-sm-6 col-md-4">
	            <p class="text-center"><i class="fas fa-utensils fa-5x"></i></p>
	            <h5 class="text-center text-uppercase poppins-regular font-weight-bold">Cocinando Recuerdos</h5>
	            <p class="text-center">Contactanos al 3057124803 con 6 horas de anticipacion a tu visita y preparamos  el menú que se ajuste a tus deseos</p>
	        </div>
	        <div class="col-12 col-sm-6 col-md-4">
	            <p class="text-center"><i class="fas fa-store-alt fa-5x"></i></p>
	            <h5 class="text-center text-uppercase poppins-regular font-weight-bold">Reservaciones de local</h5>
	            <p class="text-center">Haz tu Reserva para cualquier tipo de ocasión</p>
	        </div>
	    </div>
	</div>

	<hr>

	<div class="container-fluid container-web-page">
	    <h3 class="text-center text-uppercase poppins-regular font-weight-bold">Nuestros platos más populares</h3>
	    <div class="container-cards full-box">

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/img/hamburguesa.png" alt="hamburguesa">>
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">Mata Hambre</h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$50.000</span></p>
	            </div>
                </div>

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/img/lapaisa.jpg" alt="paisa">
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">La paisa</h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$40.000</span></p>
	            </div>

	        </div>

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/img/churrasco.jpg" alt="churrasco">
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">Churrasco de la casa </h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$30.000</span></p>
	            </div>
                </div>

	    </div>
	    <br>
	    <p class="text-center"><a href="menu.jsp" class="btn btn-primary"><i class="fas fa-hamburger fa-fw"></i> &nbsp; Ir al menu</a></p>
	</div>

	<hr>

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

	<!-- Footer -->
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
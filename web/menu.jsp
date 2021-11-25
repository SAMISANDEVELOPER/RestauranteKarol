<%-- 
    Document   : menu.jsp
    Created on : 20-oct-2021, 21:32:30
    Author     : SamiSanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
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
	                <p class="text-center full-box">¿No tienes cuenta? <a href="registration.html">Regístrate aquí</a></p>
                    </div>
	        </div>
                
            </div>
	</header>


	<!-- Content -->
	<div class="container container-web-page">
	    <h3 class="font-weight-bold poppins-regular text-uppercase">Menú</h3>
	    <p class="text-justify">Bienvenido al menú, acá encontrara todos los platos disponibles en el restaurante.<i class="fas fa-hamburger fa-fw"></i> <i class="fas fa-sort-alpha-down fa-fw"></i><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR"</p>

	    <div class="container-fluid" style="border-top: 1px solid #E1E1E1; padding: 20px; 0">
	        <div class="row align-items-center">
	            <div class="col-12 col-sm-4 text-center text-sm-start">
	                <div class="dropdown">
	                    <button class="btn btn-link dropdown-toggle" type="button" id="categorySubMenu" data-mdb-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                        <i class="fas fa-hamburger fa-fw"></i> &nbsp; Menú
	                    </button>
                        </div>
	            </div>
	            <div class="col-12 col-sm-4 text-center">
	                <button type="button" class="btn btn-link" data-mdb-toggle="modal" data-mdb-target="#saucerModal">
	                    <i class="fas fa-search fa-fw"></i> &nbsp; Buscar
	                </button>
	            </div>
	            <div class="col-12 col-sm-4 text-center text-sm-end">
	                <div class="dropdown">
	                    <button class="btn btn-link dropdown-toggle" type="button" id="OrderSubMenu" data-mdb-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                        <i class="fas fa-sort-alpha-down fa-fw"></i> &nbsp; Ordenar por
	                    </button>
                        </div>
	            </div>
	        </div>
	    </div>


	    <div class="container-fluid" style="padding: 20px 0;">
	        <div class="row">
	            <div class="col-12 col-md-8">
	                <p class="text-left lead"><i class="fas fa-search fa-fw"></i> &nbsp; Resultados de la búsqueda: <span class="font-weight-bold poppins-regular text-uppercase">Platillo</span></p>
	            </div>
	            <div class="col-12 col-md-4">
	                <button type="button" class="btn btn-danger">
	                    <i class="fas fa-times fa-fw"></i> &nbsp; Eliminar busqueda
	                </button>
	            </div>
	        </div>
	    </div>


	    <div class="container-cards full-box" style="padding-bottom: 40px;">

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/img/picada.jpg" alt="picada">
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">Picadita Colombiana</h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$35.000</span></p>
	            </div>
	            <div class="card-body text-center">
	                <button type="button" class="btn btn-success btn-sm"><i class="fas fa-shopping-bag fa-fw"></i> &nbsp; Agregar</button>
	                &nbsp; &nbsp;
	                <a href="detalles.jsp" class="btn btn-info btn-sm"><i class="fas fa-utensils fa-fw"></i> &nbsp; Ingredientes</a>
	            </div>
	        </div>

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/img/sushi.jpg" alt="sushi">
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">Sushi</h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$25.000</span></p>
	            </div>
	            <div class="card-body text-center">
	                <button type="button" class="btn btn-success btn-sm"><i class="fas fa-shopping-bag fa-fw"></i> &nbsp; Agregar</button>
	                &nbsp; &nbsp;
	                <a href="detalles.jsp" class="btn btn-info btn-sm"><i class="fas fa-utensils fa-fw"></i> &nbsp; Ingredientes</a>
	            </div>
	        </div>

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/img/Albondigas.jpg" alt="Albondigas">
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">Menú light</h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$40.000</span></p>
	            </div>
	            <div class="card-body text-center">
	                <button type="button" class="btn btn-success btn-sm"><i class="fas fa-shopping-bag fa-fw"></i> &nbsp; Agregar</button>
	                &nbsp; &nbsp;
	                <a href="detalles.jsp" class="btn btn-info btn-sm"><i class="fas fa-utensils fa-fw"></i> &nbsp;Ingredientes</a>
	            </div>
	        </div>

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/platillos/platillo.jpg" alt="nombre_platillo">
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">Nombre o titulo del platillo</h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$25.000</span></p>
	            </div>
	            <div class="card-body text-center">
	                <button type="button" class="btn btn-success btn-sm"><i class="fas fa-shopping-bag fa-fw"></i> &nbsp; Agregar</button>
	                &nbsp; &nbsp;
	                <a href="detalles.jsp" class="btn btn-info btn-sm"><i class="fas fa-utensils fa-fw"></i> &nbsp; Detalles</a>
	            </div>
	        </div>

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/img/img_not_found.jpg" alt="nombre_platillo">
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">Nombre o titulo del platillo</h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$30.000</span></p>
	            </div>
	            <div class="card-body text-center">
	                <button type="button" class="btn btn-success btn-sm"><i class="fas fa-shopping-bag fa-fw"></i> &nbsp; Agregar</button>
	                &nbsp; &nbsp;
	                <a href="detalles.jsp" class="btn btn-info btn-sm"><i class="fas fa-utensils fa-fw"></i> &nbsp; Detalles</a>
	            </div>
	        </div>

	        <div class="card shadow-1-strong">
	            <img class="card-img-top" src="./assets/platillos/platillo.jpg" alt="nombre_platillo">
	            <div class="card-body text-center">
	                <h5 class="card-title font-weight-bold">Nombre o titulo del platillo</h5>
	                <p class="card-text lead"><span class="badge bg-secondary">$20.000</span></p>
	            </div>
	            <div class="card-body text-center">
	                <button type="button" class="btn btn-success btn-sm"><i class="fas fa-shopping-bag fa-fw"></i> &nbsp; Agregar</button>
	                &nbsp; &nbsp;
	                <a href="detalles.jsp" class="btn btn-info btn-sm"><i class="fas fa-utensils fa-fw"></i> &nbsp; Detalles</a>
	            </div>
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
	                    <li><h5 class="font-weight-bold" >Bogotá Colombia</h5></li>
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
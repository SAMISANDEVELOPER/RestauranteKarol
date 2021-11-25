<%-- 
    Document   : registro.jsp
    Created on : 20-oct-2021, 21:51:31
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
                    </div>
	        </div>
            </div>
	</header>


	<!-- Content -->
	<div class="container container-web-page">
	    <h3 class="font-weight-bold poppins-regular text-uppercase">Crear cuenta</h3>
	    <p class="text-justify">Al crear una cuenta en nuestro sitio web usted acepta nuestros <a href="#">términos y condiciones</a>. La información introducida en el formulario debe de ser clara, precisa y legitima. Para crear una cuenta debe de llenar todos los campos que son obligatorios marcados con el icono <i class="fab fa-font-awesome-alt"></i></p>
	    <hr>
	    <div class="row">
	        <div class="col-12">
	            <form class="div-bordered" action="" style="padding: 15px;">

	                <fieldset>
			<legend><i class="far fa-address-card"></i> &nbsp; Información personal</legend>
	                    <div class="container-fluid">
	                        <div class="row">
	                            <div class="col-12 col-md-6">
	                                <div class="">
	                                    <select class="form-control" name="cliente_tipo_documento_reg" id="cliente_tipo_documento">
	                                        <option value="" selected="" >documento</option>
	                                        <option value="Cedula" >1 - Cedula</option>
                                            </select>
	                                    <label for="cliente_tipo_documento" class="form-label"></label>
	                                </div>
	                            </div>

	                            <div class="col-12 col-md-6">
	                                <div class="form-outline mb-4">
	                                    <input type="text" pattern="[a-zA-Z0-9-]{7,30}" class="form-control" name="cliente_numero_documento_reg" id="cliente_numero_documento" maxlength="30">
	                                    <label for="cliente_numero_documento" class="form-label">Numero de documento <i class="fab fa-font-awesome-alt"></i></label>
	                                </div>
	                            </div>

	                            <div class="col-12 col-md-4">
	                                <div class="form-outline mb-4">
	                                    <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{4,35}" class="form-control" name="cliente_nombre_reg" id="cliente_nombre" maxlength="35">
	                                    <label for="cliente_nombre" class="form-label">Nombres <i class="fab fa-font-awesome-alt"></i></label>
	                                </div>
	                            </div>

	                            <div class="col-12 col-md-4">
	                                <div class="form-outline mb-4">
	                                    <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{4,35}" class="form-control" name="cliente_apellido_reg" id="cliente_apellido" maxlength="35">
	                                    <label for="cliente_apellido" class="form-label">Apellidos <i class="fab fa-font-awesome-alt"></i></label>
	                                </div>
	                            </div>

	                            <div class="col-12 col-md-4">
	                                <div class="form-outline mb-4">
	                                    <input type="text" pattern="[0-9()+]{8,20}" class="form-control" name="cliente_telefono_reg" id="cliente_telefono" maxlength="20">
	                                    <label for="cliente_telefono" class="form-label">Teléfono <i class="fab fa-font-awesome-alt"></i></label>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                            <legend><i class="fas fa-user-lock"></i> &nbsp; Información de inicio de sesión</legend>
	                    <div class="container-fluid">
	                        <div class="row">
	                            <div class="col-12 col-md-4">
	                                <div class="form-outline mb-4">
	                                    <input type="email" class="form-control" name="cliente_email_reg" id="cliente_email" maxlength="47">
	                                    <label for="cliente_email" class="form-label">Email <i class="fab fa-font-awesome-alt"></i></label>
	                                </div>
	                            </div>
	                            <div class="col-12 col-md-4">
	                                <div class="form-outline mb-4">
	                                    <input type="password" class="form-control" name="cliente_clave_1_reg" id="cliente_clave_1" pattern="[a-zA-Z0-9$@.-]{7,100}" maxlength="100" >
	                                    <label for="cliente_clave_1" class="form-label">Contraseña <i class="fab fa-font-awesome-alt"></i></label>
	                                </div>
	                            </div>
	                            <div class="col-12 col-md-4">
	                                <div class="form-outline mb-4">
	                                    <input type="password" class="form-control" name="cliente_clave_2_reg" id="cliente_clave_2" pattern="[a-zA-Z0-9$@.-]{7,100}" maxlength="100" >
	                                    <label for="cliente_clave_2" class="form-label">Repetir contraseña <i class="fab fa-font-awesome-alt"></i></label>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </fieldset>

	                <p class="text-center" style="margin-top: 40px;">
	                    <button type="submit" class="btn btn-info btn-sm"><i class="far fa-paper-plane"></i> &nbsp; CREAR CUENTA</button>
	                </p>
	                <p class="text-center">
	                    <small>Los campos marcados con <i class="fab fa-font-awesome-alt"></i> son obligatorios</small>
	                </p>
	            </form>
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
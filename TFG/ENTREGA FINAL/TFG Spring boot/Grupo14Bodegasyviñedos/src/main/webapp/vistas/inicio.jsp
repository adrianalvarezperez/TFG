<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Inicio</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">

		 	<%-- 	<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>		 		--%>
	     		
			<%-- 	<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>		 	--%>			

			<%-- 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.3/dist/js/bootstrap.bundle.min.js"></script>	--%>

					<script src="https://unpkg.com/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/inicio.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />


</head>
<body>



	<!-- NAV-BAR -->
	<div class="bg-light">
		<nav class="navbar navbar-expand-lg bg-light div-size div-size-3">
			<div class="container-fluid d-flex flex-row-reverse col-12">
				<div class="hide-logo d-flex justify-content-start">
					<!--<img src="${pageContext.request.contextPath}/bootstrap/img/logo.png"> -->
				</div>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between"
					id="navbarSupportedContent">
					<div
						class="d-flex col-lg-4 hide-logo-to justify-content-center justify-content-lg-start">
						<ul class="navbar-nav mb-2 mb-lg-0">
							<a href="/"><img
								src="${pageContext.request.contextPath}/bootstrap/img/logo.png"></a>
						</ul>
					</div>


					<div class="d-flex col-lg-4">
						<ul
							class="navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-evenly">


							<sec:authorize
								access="!isAuthenticated() || hasAnyAuthority('ROLE_CLIENTE')">
								<li class="nav-item active d-flex justify-content-center">
									<a class="nav-link nav-center" href="/">Home</a>
								</li>
							</sec:authorize>


							<sec:authorize access="hasAnyAuthority('ROLE_ADMINISTRADOR')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/producto/producto">Productos</a></li>
							</sec:authorize>


							<sec:authorize access="hasAnyAuthority('ROLE_ADMINISTRADOR')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/admin/altaAdmin">Alta admins</a></li>
							</sec:authorize>


							<sec:authorize access="hasAnyAuthority('ROLE_ADMINISTRADOR')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/admin/compras">Compras de hoy</a></li>
							</sec:authorize>


							<sec:authorize access="hasAnyAuthority('ROLE_ADMINISTRADOR')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/admin/clientes">Listado Clientes</a></li>
							</sec:authorize>



							<sec:authorize access="hasAnyAuthority('ROLE_ADMINISTRADOR')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/cliente/verDatos2">Usuarios </a></li>
							</sec:authorize>


							<sec:authorize
								access="!isAuthenticated() || hasAnyAuthority('ROLE_CLIENTE')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/producto/catalogoProductos">Vinos</a>
								</li>
							</sec:authorize>


							<sec:authorize
								access="!isAuthenticated() || hasAnyAuthority('ROLE_CLIENTE')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/sobre/nosotros">Nosotros</a></li>
							</sec:authorize>


							<sec:authorize
								access="!isAuthenticated() || hasAnyAuthority('ROLE_CLIENTE')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/contacto/formContacto">Contacto</a>
								</li>
							</sec:authorize>


							<sec:authorize
								access="!isAuthenticated() || hasAnyAuthority('ROLE_CLIENTE')">
								<li class="nav-item d-flex justify-content-center"><a
									class="nav-link nav-center" href="/blog/bodega">Bodega</a>
								</li>
							</sec:authorize>







							<sec:authorize access="hasAnyAuthority('ROLE_CLIENTE')">
								<li class="nav-item dropdown desk-flags">
									<a class="nav-link dropdown-toggle navv-center-flag" id="dropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 
										<span>Perfil</span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
										<li><a class="dropdown-item" href="/direccion/altaDireccion">Direcciones</a></li>
										<li><a class="dropdown-item" href="/tarjeta/altaTarjeta">Tarjetas</a></li>
										<li><a class="dropdown-item" href="/cliente/compras">Pedidos</a></li>
										<li><a class="dropdown-item" href="/cliente/verDatos">Usuario</a></li>
									</ul>
								</li>
							</sec:authorize>

						</ul>
					</div>





					<div class="d-md-flex col-lg-4">
					
						<ul class="navbar-nav mb-lg-0 w-50 justify-content-end">
						<!-- CARRO --><!-- CARRO --><!-- CARRO -->
							<sec:authorize
								access="!isAuthenticated() || hasAnyAuthority('ROLE_CLIENTE')">
								<li class="nav-item d-flex justify-content-center">
									<a class="nav-link nav-center" href="/compra/carrito">
									<img alt="" src="${pageContext.request.contextPath}/bootstrap/img/cesta.png" style="width:25px;"></a>
								</li>
							</sec:authorize>
						</ul>
						<ul class="navbar-nav mb-lg-0 w-100 justify-content-end">
						
						<sec:authorize access="!isAuthenticated() || hasAuthority('ROLE_CLIENTE')">
								<li
									class="nav-item align-items-center hide-logo-to d-flex justify-content-center">
									<a class="mx-2 text-decoration-none text-dark nav-center">${usuario.nombre}</a>
									<br>
								</li>
								<br>
							</sec:authorize>
						
							
							<sec:authorize access="!isAuthenticated()">
								<li class="nav-item hide-logo-to d-flex justify-content-center">
									<a class="btn btn-outline-primary mx-2 nav-center boton-blanco"
									href="/loginForm">INICIA SESIÓN</a> <br>
								</li>
								<br>
							</sec:authorize>

							<sec:authorize access="!isAuthenticated()">
								<li class="nav-item hide-logo-to d-flex justify-content-center">
									<a class="btn btn-primary mx-2 nav-center" href="/registro">¡REGISTRATE YA!</a>
								</li>
							</sec:authorize>
							
							

							<sec:authorize access="hasAnyAuthority('ROLE_CLIENTE')">
								<li class="nav-item hide-logo-to d-flex justify-content-center">
									<a
									class="btn btn-lg px-3 btn-outline-primary mx-2 nav-center boton-blanco"
									href="/logout2">Cerrar Sesión</a>
								</li>
							</sec:authorize>

							<sec:authorize access="hasAuthority('ROLE_ADMINISTRADOR')">
								<li
									class="nav-item hide-logo-to align-items-center d-flex justify-content-center">
									<a class="text-decoration-none text-dark mx-2 nav-center">${usuario.nombre}</a>
									<br>
								</li>
								<br>
							</sec:authorize>

							<sec:authorize access="hasAnyAuthority('ROLE_ADMINISTRADOR')">
								<li class="nav-item hide-logo-to d-flex justify-content-center">
									<a class="btn btn-outline-primary mx-2 nav-center boton-blanco"
									href="/logout2">Cerrar Sesión</a>
								</li>
							</sec:authorize>
							
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>




</body>
</html>




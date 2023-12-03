<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Alta cliente</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
										<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
</head>
<body>


	<jsp:include page="inicio.jsp"></jsp:include>		<!-- NAV BAR -->


<br>
<div class="container d-flex justify-content-center align-items-center vh-0">
  <div>
    <h1 class="py-3 mb-4">Registro&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>
    <form action="/registro" method="post">

      <div class="mb-3">
        <label for="nombre" class="form-label">Nombre</label>
        <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingrese su nombre" autofocus required minlength="2">
        <div class="invalid-feedback">El nombre es requerido y debe tener al menos 2 caracteres.</div>
      </div>

      <div class="mb-3">
        <label for="apellido" class="form-label">Apellido</label>
        <input type="text" class="form-control" name="apellido" id="apellido" placeholder="Ingrese su apellido" required minlength="2">
        <div class="invalid-feedback">El apellido es requerido y debe tener al menos 2 caracteres.</div>
      </div>

      <div class="mb-3">
        <label for="fecha" class="form-label">Fecha nacimiento</label>
        <input type="date" class="form-control" name="fechaNacimiento" id="fechaNacimiento" required>
        <div class="invalid-feedback">Ingrese una fecha de nacimiento válida.</div>
      </div>

      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" name="email" id="email" placeholder="Ingrese su email" required>
        <div class="invalid-feedback">Ingrese un email válido.</div>
      </div>

      <div class="mb-3">
        <label for="password" class="form-label">Contraseña</label>
        <input type="password" class="form-control" name="password" id="password" placeholder="Ingrese su contraseña" required minlength="6">
        <div class="invalid-feedback">La contraseña es requerida y debe tener al menos 6 caracteres.</div>
      </div>

      <input type="submit" class="btn btn-primary" value="Regístrate"> <hr>
		<p style="font-size:10px;">Al registrarte, aceptas nuestras <span style="text-decoration:underline">Condiciones de uso</span> y nuestra <br><span style="text-decoration:underline">Política de privacidad.</span></p>
		<p>¿Ya tienes una cuenta? <a href="/loginForm">Inicia sesión</a></p>
    </form>
  </div>
</div><br><br>

			



	
		  <jsp:include page="reserva.jsp"></jsp:include> 						<!-- RESERVA -->



		<jsp:include page="footer.jsp"></jsp:include> 		<!-- FOOTER -->



</body>
</html>










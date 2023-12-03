<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Alta admin</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
</head>
<body>




	<jsp:include page="inicio.jsp"></jsp:include>		<!-- INICIO -->




	<div class="container my-5">
		<form action="/admin/altaAdmin" method="post">
			<h2 class="text-center bg-dark text-light py-3 mb-4">Alta Administrador</h2>
			<div class="mb-3">
				<label for="nombre" class="form-label">Nombre</label> <input type="text" class="form-control" id="nombre" name="nombre"
						placeholder="Introduzca su Nombre" autofocus required>
			</div>
			<div class="mb-3">
				<label for="apellido" class="form-label">Apellido</label> <input type="text" class="form-control" id="apellido" name="apellido"
						placeholder="Introduzca su Apellido" required>
			</div>
			<div class="mb-3">
				<label for="fechaNacimiento" class="form-label">Fecha Nacimiento</label> <input type="date" class="form-control"
						id="fechaNacimiento" name="fechaNacimiento" required>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input type="email" class="form-control" id="email" name="email"
						placeholder="Introduzca su Email" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Contraseña</label> <input type="password" class="form-control" id="password" name="password"
						placeholder="Introduzca una contraseña" required>
			</div><br>
			<button type="submit" class="btn btn-primary">Dar alta</button>
		</form>
		<h1 class="text-center mt-5">${mensaje}</h1>
	</div>




	<jsp:include page="footer.jsp"></jsp:include>		<!-- FOOTER -->
	
	
	
	
</body>
</html>
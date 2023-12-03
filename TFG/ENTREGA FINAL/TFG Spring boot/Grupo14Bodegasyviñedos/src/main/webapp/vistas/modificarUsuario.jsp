<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Modificar producto</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
					<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
					<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>	
				
</head>
<body>




		<jsp:include page="inicio.jsp"></jsp:include>		<!-- INICIO -->
		 





	<div class="container my-5">
		<form action="/cliente/modificar" method="post">
			<h1 class="py-3 mb-4">Modificar usuario</h1>
			
			<div class="mb-3">
				<label for="idUsuario" class="form-label"></label> 
				<input type="hidden" class="form-control" id="idUsuario" name="id" value="${datos.idUsuario}">
			</div>
			
			<div class="mb-3">
				<label for="username" class="form-label">Username</label> 
				<input type="text" class="form-control" id="username" name="username" value="${datos.username}" required>
			</div>
			<div class="mb-3">
				<label for="nombre" class="form-label">Nombre</label> 
				<input type="text" class="form-control" id="nombre" name="nombre"  value="${datos.nombre}"  required>
			</div>
			<div class="mb-3">
				<label for="apellidos" class="form-label">Apellidos</label> 
				<input type="text" class="form-control" id="apellidos" name="apellidos" value="${datos.apellidos}"  required>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> 
				<input type="email" class="form-control" id="email" name="email" value="${datos.email}" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label> 
				<input type="password" class="form-control" id="password" name="password" value=""  placeholder="*Introduce nueva contraseña o su contraseña" required>
			</div><br>
			<button type="submit" class="btn btn-primary">Modificar</button>
		</form>
		<h4 class="text-center" style=""> ${mensaje} </h4>
	</div>




	<jsp:include page="footer.jsp"></jsp:include>		<!-- FOOTER -->
	
	
	
	
</body>
</html>
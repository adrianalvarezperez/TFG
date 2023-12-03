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
</head>
<body>




		<jsp:include page="inicio.jsp"></jsp:include>		<!-- INICIO -->
		 





	<div class="container my-5">
		<form action="/producto/modificarProducto" method="post">
			<h1 class="text-center bg-dark text-light py-3 mb-4">Modificar producto</h1>
			<div class="mb-3">
				<label for="idProducto" class="form-label"></label> <input type="hidden" class="form-control" id="idProducto"
						name="id" value="${sesionIdProducto.idProducto}">
			</div>
			<div class="mb-3">
				<label for="nombreProducto" class="form-label">Nombre del Producto</label> <input type="text" class="form-control" id="nombreProducto" name="nombreProducto"
						value="${sesionIdProducto.nombre}" required>
			</div>
			<div class="mb-3">
				<label for="descripcion" class="form-label">Descripción del Producto</label> <input type="text" class="form-control" id="descripcion"
						name="descripcion" value="${sesionIdProducto.descripcion}" required>
			</div>
			<div class="mb-3">
				<label for="precio" class="form-label">Precio del Producto</label> <input type="number" class="form-control" id="precio" name="precio"
						value="${sesionIdProducto.precio}" step="0.01" required>
			</div>
			<div class="mb-3">
				<label for="stock" class="form-label">Stock del Producto</label> <input type="number" class="form-control" id="stock" name="stock"
						value="${sesionIdProducto.stock}" required>
			</div><br>
			<button type="submit" class="btn btn-primary">Modificar</button>
		</form>
		<h1 class="text-center">${mensaje}</h1>
	</div>




	<jsp:include page="footer.jsp"></jsp:include>		<!-- FOOTER -->
	
	
	
	
</body>
</html>
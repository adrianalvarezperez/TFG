<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Alta producto</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
</head>
<body>



			 <jsp:include page="inicio.jsp"></jsp:include>  			<!-- INICIO -->






	<div class="container my-5">
		<form action="/producto/altaProducto" method="post">
			<h1 class="text-center bg-dark text-light py-3 mb-4">Alta producto</h1>

			<div class="mb-3">
				<label for="nombreProducto" class="form-label">Nombre del producto</label> <input type="text" class="form-control" id="nombreProducto" name="nombreProducto"
						placeholder="Ingrese el nombre del producto" autofocus required>
			</div>

			<div class="mb-3">
				<label for="descripcion" class="form-label">Descripción del producto</label>
				<textarea class="form-control" id="descripcion" name="descripcion" placeholder="Ingrese la descripción del producto" required></textarea>
			</div>

			<div class="mb-3">
				<label for="precio" class="form-label">Precio del producto</label> <input type="text" class="form-control" id="precio" name="precio" placeholder="Ingrese el precio del producto"
						pattern="[0-9]+(\.[0-9]+)?" title="Ingrese un número válido"required>
			</div>

			<div class="mb-3">
				<label for="stock" class="form-label">Stock del producto</label> <input 	type="number" class="form-control" id="stock" name="stock"
						placeholder="Ingrese el stock del producto" required>
			</div><br>

			<div class="">
				<button type="submit" class="btn btn-primary">Dar alta</button>
			</div>
		</form>

		<h1 class="text-center mt-4">${mensaje}</h1>
	</div>





		<jsp:include page="footer.jsp"></jsp:include>		<!-- FOOTER -->
	
	
	
</body>
</html>
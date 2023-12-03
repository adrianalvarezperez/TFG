<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Carrito</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
					<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/carrito.css" />
					<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>	
</head>
<body>


	<jsp:include page="inicio.jsp"></jsp:include><br>
	<br>
	<br>
	<br>
	<br>
	<!-- INICIO -->








	<div class="container">
    <h1 class="text-center">Productos del carrito</h1>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead>
                <tr class="table-dark">
                    <th scope="col">Id Producto</th>
                    <th scope="col">Nombre producto</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Cantidad</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${carrito}" var="producto">
                    <tr>
                        <td class="align-middle">${producto.productoDTO.idProducto}</td>
                        <td class="align-middle">${producto.productoDTO.nombre}</td>
                        <td class="align-middle">${producto.precioVenta}€</td>
                        <td class="align-middle">${producto.cantidad}</td>
                        <td class="align-middle text-center">
                            <form action="/compra/carrito/borrar" method="post">
                                <input type="hidden" name="id_producto" value="${producto.productoDTO.idProducto}" />
                                <button class="btn btn-sm btn-outline-primary" type="submit">Eliminar</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

	<h3 style="font-size: 20px; text-align: center;">${mensaje}</h3>

	<sec:authorize access="hasAnyAuthority('ROLE_CLIENTE')">
	<div class="container">
		<form action="/compra/verificar">
			<input type="submit" class="btn btn-primary" value="Comprar">  <h3 style="font-size: 15px;color:red;display:inline;">${mensaje2}</h3>
		</form>
	</div>
	
	</sec:authorize>
	
	<sec:authorize access="!isAuthenticated()">
	<div class="container">
		<form action="/loginForm">
			<input type="submit" class="btn btn-primary" value="Comprar">
		</form>
	</div>
	</sec:authorize>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>





	
	<br>



	<jsp:include page="reserva.jsp"></jsp:include> 						<!-- RESERVA -->



	<jsp:include page="footer.jsp"></jsp:include>						<!-- FOOTER -->




</body>
</html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Compras realizadas hoy</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
				
					<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>		
					
<body>



	<jsp:include page="inicio.jsp"></jsp:include>			<!-- INICIO -->
	<br><br><br><br><br><br><br><br><br><br><br><br>


	<div class="container">
		<h2 class="text-center bg-dark text-light py-3 mb-4">Pedidos realizados en el día de hoy</h2>
		<div class="accordion" id="comprasAccordion">
			<c:forEach var="compra" items="${compras}">
				<div class="accordion-item">
					<h2 class="accordion-header" id="heading${compra.idCompra}">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${compra.idCompra}"
								aria-expanded="false" aria-controls="collapse${compra.idCompra}">
								Compra ID: ${compra.idCompra}
						</button>
					</h2>
					<div id="collapse${compra.idCompra}" class="accordion-collapse collapse" aria-labelledby="heading${compra.idCompra}" data-bs-parent="#comprasAccordion">
						<div class="accordion-body">
							<ul>
								<li><strong>Estado:</strong> ${compra.estado}</li>
								<li><strong>Dirección:</strong> ${compra.direccione.calle}</li>
								<li><strong>Tarjeta de pago:</strong> ${compra.tarjetasBancaria.numeroTarjeta}</li>
								<li><strong>Usuario:</strong> ${compra.usuario.nombre} ${compra.usuario.apellidos}</li>
							</ul>
							<table class="table">
								<thead>
									<tr>
										<th>NOMBRE</th>
										<th>PRECIO Unitario</th>
										<th>CANTIDAD</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="total" value="0" />
									<c:forEach var="linea" items="${compra.lineasDeCompras}">
										<tr>
											<td>${linea.producto.nombre}</td>
											<td>${linea.precioUnitario}€</td>
											<td>${linea.cantidad}</td>
										</tr>
										<c:set var="total" value="${total + (linea.precioUnitario * linea.cantidad)}" />
									</c:forEach>
								</tbody>
							</table>
							<h3 class="text-end">Total: ${total} €</h3>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>




	
	<h3 class="text-center">${mensaje}</h3>
	<br><br><br><br><br><br><br><br><br><br><br><br>
	




	<jsp:include page="footer.jsp"></jsp:include>		<!-- FOOTER -->
	
	
	
	
	
</body>
</html>
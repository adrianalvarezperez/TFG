<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Pedidos realizados</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
				<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
				
				<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>	
</head>
</body>



  			<jsp:include page="inicio.jsp"></jsp:include>		<!-- INICIO -->
  			<br><br><br><br><br><br><br><br><br>  				



<div class="container">
	<h2 class="py-3 mb-4">Pedidos realizados</h2>
	<div class="accordion" id="accordionExample">
		<c:forEach var="compra" items="${compras}" varStatus="status">
			<div class="accordion-item">
				<h2 class="accordion-header" id="heading${status.index}">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${status.index}" aria-expanded="false"
							aria-controls="collapse${status.index}">Pedido#${compra.idCompra} - ${compra.estado}
					</button>
				</h2>
				<div id="collapse${status.index}" class="accordion-collapse collapse" aria-labelledby="heading${status.index}" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>Dirección: ${compra.direccione.calle}</p>
						<p>Tarjeta de pago: ${compra.tarjetasBancaria.numeroTarjeta}</p>
						<table class="table table-bordered table-hover">
							<thead class="table-dark">
								<tr>
									<th scope="col">NOMBRE</th>
									<th scope="col">PRECIO Unitario</th>
									<th scope="col">CANTIDAD</th>
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
</div><br><br><br><br><br><br><br><br><br><br><br><br>





  				<jsp:include page="footer.jsp"></jsp:include>  			<!-- FOOTER -->
  				
  				
  				
  				

</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Tienda</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
					<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/catalogoProductos.css" />
					<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
</head>
<body>


	<jsp:include page="inicio.jsp"></jsp:include>  <!-- NAV-BAR -->




	<div class="container-fluid p-0 margin-bottom-c">
		<div class="">
			<div class="">
				<img class="img-top w-100" src="${pageContext.request.contextPath}/bootstrap/img/vinos2.png" />
				<img class="img-top-phone w-100" src="${pageContext.request.contextPath}/bootstrap/img/vinos1.png" />
				<img class="img-top-tablet w-100" src="${pageContext.request.contextPath}/bootstrap/img/vinos2.png" />
			</div>
		</div>
	</div>


	<div class="container-fluid">
		<div class="row">
			<div class="d-md-flex justify-content-evenly">
				<div class="d-flex px-3">
					<div class="container-fluid div-size hide-size h-100">
						<div class="row justify-content-center h-100 mb-4">
							<div class="col-lg-4 card-group" style="width: fit-content">
								<div class="row">
									<div class="col p-0">
										<div class="card h-100">
											<div class="hide-img">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-top" alt="...">
											</div>
											
											<div class="hide-img-phone">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-phone w-100" alt="...">
											</div>
											
											<div class="hide-img-tablet">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-tablet w-100" alt="...">
											</div>
										
											<div class="card-body ">
												<h5 class="card-title">${producto1.nombre}</h5>
												<p class="card-text">${producto1.descripcion}</p>
											</div>
											<div class="button-container d-flex flex-row-reverse col">
												<div class="col-6 d-grid  d-flex justify-content-end">
													<form method="post" class="w-100" action="/compra/carrito/agregar">
															Cantidad &nbsp;&nbsp;<input class="text-center" type="number" name="cantidad" value="1" min=0 max=10><br><br>
															<input type="hidden" name="id_producto"value="${producto1.idProducto}"> 
															<input class="btn w-100 btn-primary btn-lg" type="submit" value="AÑADIR"></input>
													</form>
												</div>
												
												<div class="col-6 d-grid">
													<p class="price ms-3">${producto1.precio}€</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				<div class="d-flex px-3">
					<div class="container-fluid div-size hide-size h-100">
						<div class="row justify-content-center h-100 mb-4">
							<div class="col-lg-4 card-group" style="width: fit-content">
								<div class="row">
									<div class="col p-0">
										<div class="card h-100">
											<div class="hide-img">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-top" alt="...">
											</div>
											<div class="hide-img-phone">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-phone w-100" alt="...">
											</div>
											<div class="hide-img-tablet">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-tablet w-100" alt="...">
											</div>
											<div class="card-body">
												<h5 class="card-title">${producto2.nombre}</h5>
												<p class="card-text">${producto2.descripcion}</p>
											</div>
											<div class="button-container d-flex flex-row-reverse col">
												<div class="col-6 d-grid  d-flex justify-content-end">
													<form method="post" class="w-100" action="/compra/carrito/agregar">
															Cantidad &nbsp;&nbsp;<input class="text-center" type="number" name="cantidad" value="1" min=0 max=10><br><br> 
															<input type="hidden" name="id_producto" value="${producto2.idProducto}"> 
															<input class="btn w-100 btn-primary btn-lg" type="submit" value="AÑADIR"></input>
													</form>
												</div>
												<div class="col-6 d-grid">
													<p class="price ms-3">${producto2.precio}€</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				<div class="d-flex px-3">
					<div class="container-fluid div-size hide-size h-100">
						<div class="row justify-content-center h-100 mb-4">
							<div class="col-lg-4 card-group" style="width: fit-content">
								<div class="row">
									<div class="col p-0">
										<div class="card h-100">
											<div class="hide-img">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-top" alt="...">
											</div>
											<div class="hide-img-phone">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-phone w-100" alt="...">
											</div>
											<div class="hide-img-tablet">
												<img src="${pageContext.request.contextPath}/bootstrap/img/botellav.png" class="card-img-tablet w-100" alt="...">
											</div>
											<div class="card-body">
												<h5 class="card-title">${producto3.nombre}</h5>
												<p class="card-text">${producto3.descripcion}</p>
											</div>
											<div class="button-container d-flex flex-row-reverse col">
												<div class="col-6 d-grid  d-flex justify-content-end">
													<form method="post" class="w-100" action="/compra/carrito/agregar">
															Cantidad &nbsp;&nbsp;<input class="text-center" type="number" name="cantidad" value="1" min=0 max=10><br><br> 
															<input type="hidden" name="id_producto" value="${producto3.idProducto}"> 
															<input class="btn w-100 btn-primary btn-lg" type="submit" value="AÑADIR"></input>
													</form>
												</div>
												<div class="col-6 d-grid">
													<p class="price ms-3">${producto3.precio}€</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div><br><br><br><br><br><br><br><br>






	<jsp:include page="preguntas.jsp"></jsp:include><br><br>	<!-- FAQ -->



	<jsp:include page="sponsor.jsp"></jsp:include><br><br>		<!-- SPONSOR -->



	<jsp:include page="reserva.jsp"></jsp:include>				<!-- RESERVA -->



	<jsp:include page="footer.jsp"></jsp:include>				<!-- FOOTER -->
	



</body>
</html>
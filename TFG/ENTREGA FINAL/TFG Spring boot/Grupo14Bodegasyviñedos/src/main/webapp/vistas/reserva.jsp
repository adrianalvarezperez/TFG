<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Reserva</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
						<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/reserva.css" />
						<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
</head>
<body>




	<!--  RESERVA  -->
	<div class="container-fluid">
		<div class="row cta-container" style="background-image: url('${pageContext.request.contextPath}/bootstrap/img/cta.jpeg');
    				background-size: cover; background-position: center; background-repeat: no-repeat; ">
			<div class="backdropFilter">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="jumbotron jumbotron-fluid">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12 cta-info-container">
								<h1 class="text-center text-reserva">Reserva tu visita a nuestra Bodega</h1>
								<p class="lead text-center text-reserva-sub">Disfruta de nuestras experiencias a tu manera</p>
								<button type="button" class="btn btn-primary btn-lg">
										<a class="color-text" href="/contacto/formContacto">RESERVA</a>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





</body>
</html>



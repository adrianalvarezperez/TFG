<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Sobre nosotros</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
						<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/sobreNosotros.css" />
						<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
</head>
<body>


	<!-- SOBRE NOSOTROS -->
	<div class="container-fluid div-size div-size-2 tablet-size mt-4">
		<div class="row margin-top-c margin-bottom-c">
			<div class="col d-lg-flex flex-row-lg-reverse">
				<div class="d-flex justify-content-center col-lg-6 margin-bottom-t mb-4 pe-lg-5">
					<img class=" w-100 img-bot-phone" src="${pageContext.request.contextPath}/bootstrap/img/barrica.png" alt="Islas Baleares" /> 
					<img class="img-bot w-100" src="${pageContext.request.contextPath}/bootstrap/img/barrica.png" alt="Islas Baleares" /> 
					<img class="img-bot-tablet w-100" src="${pageContext.request.contextPath}/bootstrap/img/barrica.png" alt="Islas Baleares" />
				</div>
				
				
				<div
					class="col-lg-6 d-flex align-items-center justify-content-md-center pe-lg-4">
					<div class="col-md-12">
						<div class="text-islas">
							<h1 class="text-islas-h1 mb-4 text-phone">Sobre Nosotros</h1>
							<p class="">Bodegas & Viñedos es una bodega dedicada a la
								producción, elaboración y embotellado de vino. Siendo la única
								cooperativa vinícola del municipio, cuenta con aproximadamente
								300 socios activos. Garantizamos de esta forma los precios más
								competitivos a nuestros clientes, ya que el producto va directo
								del productor al comprador. La bodega está ubicada en la
								localidad de Villarrobledo en la provincia de Albacete, en la
								comarca de La Mancha, la zona de mayor producción vinícola de
								España, denominada como: VIÑEDO DEL MUNDO.</p>
							<div class="margin-top-cd">
								<button type="button" class="btn btn-primary btn-lg">
									<a class="color-text" href="/sobre/nosotros">SABER MÁS</a>
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



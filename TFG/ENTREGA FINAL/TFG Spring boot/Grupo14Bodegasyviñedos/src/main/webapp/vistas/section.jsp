<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Section</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
					<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/section.css" />
					<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"/>
</head>
<body>




<!--  SECTION  -->
	<div class="container-fluid">
		<div class="row justify-content-center mt-md-5 mt-2">
			<div class="col-md-8 ">
				<div class="text-center">
					<h1 class="">Bodegas &amp; Viñedos</h1>
					<h5>Disfruta de un magnífico vino en nuestras bodegas o bien en tu casa</h5>
				</div>
			</div>
		</div>
	</div><br><br>
	<div class="container-fluid">
		<div class="container-fluid div-size div-size-2 tablet-size mt-4">
			<div class="row margin-top-c margin-bottom-c">
				<div class="col d-lg-flex flex-lg-row-reverse">
					<div class="d-flex justify-content-center col-lg-6 margin-bottom-t mb-4">
						<img class="img-bot-phone" src="${pageContext.request.contextPath}/bootstrap/img/vino.png" alt="rosado" /> 
						<img class="img-bot w-100" src="${pageContext.request.contextPath}/bootstrap/img/rosado.png" alt="rosado" /> 
						<img class="img-bot-tablet w-100" src="${pageContext.request.contextPath}/bootstrap/img/rosado.png" alt="rosado" />
					</div>
					<div class="col-lg-6 d-flex align-items-center justify-content-md-center pe-lg-4">
						<div class="col-md-12">
							<div class="text-islas">
								<h1 class="text-islas-h1 mb-4 text-phone">Disfruta de nuestro vino rosado</h1>
								<p class="">Este rosado está elaborado íntegramente con la
									variedad Bobal de la Denominación de Origen Utiel-Requena.
									Tiene una atractiva y cuidada imagen de botella, pero sin duda
									lo mejor está en el interior. Un vino fresco, con delicados
									aromas a frutas rojas, pomelo y con un trago amable y untuoso
									que lo hace ideal para acompañar aperitivos y platos ligeros.
									Se realiza un prensado suave para extraer solo el 50% del
									rendimiento y obtener así un mosto fino y rico en aromas
									primarios. Antes de fermentar, se deja macerar cuatro días con
									sus burbas para potenciar su cuerpo y redondez. Se fermenta a
									14 ºC durante tres semanas y, posteriormente, permanece en
									contacto con sus lías durante tres meses.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container-fluid div-size div-size-2 tablet-size mt-4">
			<div class="row margin-top-c margin-bottom-c">
				<div class="col d-lg-flex">
					<div class="d-flex justify-content-center col-lg-6 margin-bottom-t mb-4 pe-lg-5">
						<img class="img-bot-phone" src="${pageContext.request.contextPath}/bootstrap/img/container.png" alt="blanco" /> 
						<img class="img-bot w-100" src="${pageContext.request.contextPath}/bootstrap/img/blanco.png" alt="blanco" /> 
						<img class="img-bot-tablet w-100" src="${pageContext.request.contextPath}/bootstrap/img/blanco.png" alt="blanco" />
					</div>
					<div class="col-lg-6 d-flex align-items-center justify-content-md-center pe-lg-4">
						<div class="col-md-12">
							<div class="text-islas">
								<h1 class="text-islas-h1 mb-4 text-phone">Disfruta de nuestro vino blanco Godello</h1>
								<p class="">En esta añada 2019, Pazo Barrantes se reinventa
									totalmente, tanto en imagen como en contenido, para ofrecernos
									una vino altamente expresiva. Un blanco muy elegante y fresco,
									pleno de matices, con una boca viva y fluida, fruto de un
									meticuloso trabajo que ha llevado a la bodega a una nueva era.
									En esta cosecha, se ha reducido considerablemente su
									producción, una exclusividad enumerada en cada botella. Además,
									se ha añadido la madera de acacia como nuevo "ingrediente" en
									su elaboración, en la que envejece un 15% del vino
									proporcionando complejidad y profundidad. Si a esto le unimos
									el hecho de que se ha alargado su periodo de crianza en botella
									a 16 meses, obtenemos un vino de guarda que simplemente es puro
									éxtasis.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid div-size div-size-2 tablet-size mt-4">
			<div class="row margin-top-c margin-bottom-c">
				<div class="col d-lg-flex flex-lg-row-reverse">
					<div class="d-flex justify-content-center col-lg-6 margin-bottom-t mb-4">
						<img class="img-bot-phone" src="${pageContext.request.contextPath}/bootstrap/img/tinto.png" alt="tinto" />
						<img class="img-bot w-100" src="${pageContext.request.contextPath}/bootstrap/img/tinto.png" alt="tinto" /> 
						<img class="img-bot-tablet w-100" src="${pageContext.request.contextPath}/bootstrap/img/tinto.png" alt="tinto" />
					</div>
					<div class="col-lg-6 d-flex align-items-center justify-content-md-center pe-lg-4">
						<div class="col-md-12">
							<div class="text-islas">
								<h1 class="text-islas-h1 mb-4 text-phone">Disfruta de nuestro vino tinto Mencia</h1>
								<p class="">Dits del Terra es un magnífico tinto de Cariñena
									vieja que se localiza en un viñedo con orientación sur y suelos
									de pizarra. Viticultura biodinámica que prioriza la diversidad
									y la vida en la viña y una vinificación tradicional que
									persigue el respeto máximo por la variedad que requiere una
									crianza en consonancia, una combinación de barricas usadas y
									fudres que añaden vitalidad y frescura en este tinto que se
									recomienda catar junto a Arbossar, en un inspirador ejercicio
									para entender cómo se refleja el terroir en estos vinos.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="d-flex justify-content-center col margin-top-cb margin-bottom-cb">
			<button type="button" class="btn btn-primary btn-lg">
					<a class="color-text" href="/producto/catalogoProductos">COMPRAR</a>
			</button>
		</div>
	</div>




</body>
</html>



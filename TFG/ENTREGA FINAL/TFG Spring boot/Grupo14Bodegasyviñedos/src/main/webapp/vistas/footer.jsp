<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Footer</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
							<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/footer.css" />
							<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
</head>
<body>



	<!-- FOOTER -->
	<footer class="page-footer font-small blue pt-4">
		<div class="container-fluid text-center mt-lg-5 div-size">
			<div class="row justify-content-lg-between justify-content-md-evenly">
				<div class="col-md-4 mt-md-0 mt-3">
					<h5 class="text-start text-titles text-titles-des ms-lg-1 ms-md-1">Bodegas & Viñedos</h5>
					<div class="col mt-4 text-sitemap text-sitemap-des">
						<div class="row sea-down">
							<div class="col-1 ms-lg-2 ms-md-2 ms-2">
								<img class="mt-2" src="${pageContext.request.contextPath}/bootstrap/img/location.svg">
							</div>
							<div class="col-10 text-start mt-sm-1 ps-sm-0 ps-lg-2 ps-md-2 p-d">
								<p class="">Villarrobledo, 17 Castilla la Mancha, Spain</p>
							</div>
						</div>


						<div class="row sea-down">
							<div class="col-1 ms-lg-2 ms-md-2 ms-2">
								<img class="" src="${pageContext.request.contextPath}/bootstrap/img/phone.svg">
							</div>
							<div class="col-10 text-start ps-sm-0 ps-lg-2 ps-md-2 p-d">
								<p class="">+34 971 234 523</p>
							</div>
						</div>


						<div class="row ">
							<div class="col-1 ms-lg-2 ms-md-2 ms-2 ">
								<img class="" src="${pageContext.request.contextPath}/bootstrap/img/whats.svg">
							</div>
							<div class="col-10 text-start ps-sm-0 ps-lg-2 ps-md-2 p-d">
								<p>+34 698 123 223</p>
							</div>
						</div>
					</div>
				</div>


				<div class="col-md-4 mb-md-0 mb-3 div-sitemap">
					<h5 class="text-start text-titles text-titles-des">Sitemap</h5>
					<div class="text-decoration d-flex flex-row justify-content-start col mt-4 text-sitemap text-sitemap-des">
						<ul class="list-unstyled text-start me-lg-5 me-4 ms-2 ms-lg-0">
							<li class="text-decoration down-text"><a href="/">Home</a></li>
							<li class="down-text"><a href="/producto/catalogoProductos">Vinos</a></li>
							<li class="down-text"><a href="/sobre/nosotros">Sobre nosotros</a></li>
							<li class="down-text"><a href="/contacto/formContacto">Contacto</a></li>
							<li class="down-text"><a href="/contacto/formContacto">FAQ</a></li>
						</ul>

						<ul class="list-unstyled text-start ms-lg-4">
							<li class="down-text"><a href="/blog/bodega">Bodega</a></li>
							<li class="down-text"><a href="#!">Terms & Conditions</a></li>
						</ul>
					</div>
				</div>


				<div class="col-md-3 mb-md-0 mb-lg-3 div-social m-b-rrss">
					<h5 class="text-start text-titles text-titles-des mb-4">Social Media</h5>
					<div class="row icon-phone tablet-desk">
						<div class="d-lg-flex d-md-flex">
							<div class="col-1 me-md-5 mb-md-4">
								<a href="https://es-es.facebook.com/"><img class="facebook" src="${pageContext.request.contextPath}/bootstrap/img/Facebook.svg"></a>
							</div>
							<div class="col-1 mb-md-4">
								<a href="https://www.instagram.com/"><img class="instagram" src="${pageContext.request.contextPath}/bootstrap/img/instagram.svg"></a>
							</div>
						</div>
						<div class="d-lg-flex d-md-flex">
							<div class="col-1 me-5">
								<a href="https://web.whatsapp.com/"><img class="youtube" src="${pageContext.request.contextPath}/bootstrap/img/youtube.svg"></a>
							</div>
							<div class="col-1">
								<a href="https://web.whatsapp.com/"><img class="whatsapp" src="${pageContext.request.contextPath}/bootstrap/img/whatsapp.svg"></a>
							</div>
						</div>
					</div>
					<div class="row icon-phone phone-div-rrss">
						<div class="d-flex">
							<div class="col-1 me-md-5 mb-md-4 me-3">
								<a href="https://es-es.facebook.com/"><img class="facebook" src="${pageContext.request.contextPath}/bootstrap/img/Facebook.svg"></a>
							</div>
							<div class="col-1 mb-md-4 mx-3">
								<a href="https://www.instagram.com/"><img class="instagram" src="${pageContext.request.contextPath}/bootstrap/img/instagram.svg"></a>
							</div>
							<div class="col-1 me-md-5 mx-3">
								<a href="https://web.whatsapp.com/"><img class="youtube" src="${pageContext.request.contextPath}/bootstrap/img/youtube.svg"></a>
							</div>
							<div class="col-1 ms-3">
								<a href="https://web.whatsapp.com/"><img class="whatsapp" src="${pageContext.request.contextPath}/bootstrap/img/whatsapp.svg"></a>
							</div>
						</div>
					</div>
				</div>
			</div>


			<hr class="hr1">
			<hr>

			<div class="row text-copyright text-copyright-des justify-content-center">
				<div class="col-8 col-lg-6 text-lg-start">
					<p class="">© Copyright 2023 Viñedos&Bodegas Ltd. All rights reserved</p>
				</div>
				<div class="col-8 col-lg-6 text-lg-end down-text">
					<p>
						Powered by <a href="https://www.viñedos.com">Viñedos&Bodegas</a>
					</p>
				</div>
			</div>
		</div>
	</footer>



</body>
</html>



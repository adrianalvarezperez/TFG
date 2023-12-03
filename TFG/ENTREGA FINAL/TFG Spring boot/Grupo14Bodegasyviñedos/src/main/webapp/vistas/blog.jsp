<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Bodega</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">


	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/blog.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">

<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>	


</head>
<body>



	  <jsp:include page="inicio.jsp"></jsp:include>  		<!-- INICIO -->




	<!--  BLOG  -->
	<div class="container-fluid">
		<div class="row justify-content-center mb-lg-5 mb-4">
			<div class="col-lg-12 col-sm-12 p-0 d-flex justify-content-center">
				<img class="img-top" src="${pageContext.request.contextPath}/bootstrap/img/banner.png" />
				<img class="img-top-tablet" src="${pageContext.request.contextPath}/bootstrap/img/bannerTablet.png" />
				<img class="img-top-phone" src="${pageContext.request.contextPath}/bootstrap/img/bannerPhone.png" />
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
				<div class="row">
					<div class="col-lg-12 col-sm-12 text-lugares-description text-lugares-description-phone">
						<p class="mb-4 text-justify-center">En la nueva bodega nos
							esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una
							cata perfecta del vino y nos explicara los aromas de nuestro
							vino. Disfrutaremos de una cata por todo lo alto con una
							degustación de los mejores pinchos de nuestra zona. Disfrutaremos
							de una cata por todo lo alto con una degustación de los mejores
							pinchos de nuestra zona. En ultimo lugar nos dirigiremos a
							nuestra bodega mas nueva donde veremos todas nuestra barricas de
							mas de 2 metros de altura.</p>
						<p class="mb-5 text-align-justify">En la nueva bodega nos
							esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una
							cata perfecta del vino y nos explicara los aromas de nuestro
							vino. Disfrutaremos de una cata por todo lo alto con una
							degustación de los mejores pinchos de nuestra zona. En ultimo
							lugar nos dirigiremos a nuestra bodega mas nueva donde veremos
							todas nuestra barricas de mas de 2 metros de altura.</p>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 d-flex justify-content-center mb-5">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/bootstrap/img/2.png" />
					</div>
				</div>
				<div
					class="col-lg-12 mb-5 text-lugares-description text-lugares-description-phone">
					<p class="mb-4 text-justify-content-center">En la nueva bodega
						nos esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una
						cata perfecta del vino y nos explicara los aromas de nuestro vino.
						Disfrutaremos de una cata por todo lo alto con una degustación de
						los mejores pinchos de nuestra zona.Disfrutaremos de una cata por
						todo lo alto con una degustación de los mejores pinchos de nuestra
						zona.</p>
					<p class="mb-4 text-justify-content-center">En ultimo lugar nos
						dirigiremos a nuestra bodega mas nueva donde veremos todas nuestra
						barricas de mas de 2 metros de altura. En la nueva bodega nos
						esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una cata
						perfecta del vino y nos explicara los aromas de nuestro vino.
						Disfrutaremos de una cata por todo lo alto con una degustación de
						los mejores pinchos de nuestra zona. En ultimo lugar nos
						dirigiremos a nuestra bodega mas nueva donde veremos todas nuestra
						barricas de mas de 2 metros de altura.</p>

				</div>
				<div class="col-lg-12 mb-5 text-mateo-div">
					<p class="mb-4 text-justify-content-center text-mateo">" Un
						buen vino es como una buena película: dura un instante y te deja
						en la boca un sabor a gloria; es nuevo en cada sorbo y, como
						ocurre con las películas, nace y renace en cada sabor. "</p>
					<p class="name-damian">-Federico Fellini</p>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 d-flex justify-content-center mb-5">
					<img class="img-fluid w-100" src="${pageContext.request.contextPath}/bootstrap/img/1.png" />
				</div>
				<div
					class="col-lg-12 text-lugares-description text-lugares-description-phone">
					<p class="mb-4 text-justify-content-center">En la nueva bodega
						nos esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una
						cata perfecta del vino y nos explicara los aromas de nuestro vino.
						Disfrutaremos de una cata por todo lo alto con una degustación de
						los mejores pinchos de nuestra zona. En ultimo lugar nos
						dirigiremos a nuestra bodega mas nueva donde veremos todas nuestra
						barricas de mas de 2 metros de altura.</p>
					<p class="mb-4 text-justify-content-center">En la nueva bodega
						nos esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una
						cata perfecta del vino y nos explicara los aromas de nuestro vino.
						Disfrutaremos de una cata por todo lo alto con una degustación de
						los mejores pinchos de nuestra zona. En ultimo lugar nos
						dirigiremos a nuestra bodega mas nueva donde veremos todas nuestra
						barricas de mas de 2 metros de altura.</p>
				</div>
				<div class="col-lg-12 box-conclusion mb-5 text-lugares-description text-lugares-description-phone">
					<h2 class="text-conclusion">Conclusión</h2>
					<p class="text-box">En la nueva bodega nos esperara nuestro
						Enólogo Pepe, donde nos enseñara a hacer una cata perfecta del
						vino y nos explicara los aromas de nuestro vino. Disfrutaremos de
						una cata por todo lo alto con una degustación de los mejores
						pinchos de nuestra zona.Disfrutaremos de una cata por todo lo alto
						con una degustación de los mejores pinchos de nuestra zona. En
						ultimo lugar nos dirigiremos a nuestra bodega mas nueva donde
						veremos todas nuestra barricas de mas de 2 metros de altura.</p>
					<p class="text-box1">En la nueva bodega nos esperara nuestro
						Enólogo Pepe, donde nos enseñara a hacer una cata perfecta del
						vino y nos explicara los aromas de nuestro vino. Disfrutaremos de
						una cata por todo lo alto con una degustación de los mejores
						pinchos de nuestra zona. En ultimo lugar nos dirigiremos a nuestra
						bodega mas nueva donde veremos todas nuestra barricas de mas de 2
						metros de altura.</p>
				</div>
			</div>
		</div>
	</div><br><br><br>
	



  		  <jsp:include page="reserva.jsp"></jsp:include> 						<!-- RESERVA -->


	
		  <jsp:include page="footer.jsp"></jsp:include>  						<!-- FOOTER -->



</body>
</html>



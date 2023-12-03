<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Sobre Nosotros</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">


									<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/about.css"/>
									<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
				 	
				 					<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>	
				 			
</head>
<body>

					<jsp:include page="inicio.jsp"></jsp:include> 		<!-- INICIO -->			




<div class="container-fluid p-0 margin-bottom-c">
            <img class="img-top w-100" src="${pageContext.request.contextPath}/bootstrap/img/banner2.png" alt="" />
            <img class="img-top-phone w-100" src="${pageContext.request.contextPath}/bootstrap/img/Header_section_1.png" alt="" />
            <img class="img-top-tablet w-100" src="${pageContext.request.contextPath}/bootstrap/img/banner2.png" alt="" />
</div>
<div class="container-fluid justify-content-center div-size div-size-2 phone-size">
    <div class="row flex-lg-row-reverse justify-content-center margin-bottom-c">
        <div class="col-lg-6 col-md-10 d-flex align-items-center justify-content-center">
            <div class="">
                <h1 class="mb-lg-4 mb-md-3 mb-2 mt-4 mt-lg-0 mt-md-0 text-hacemos-h1">Hacemos realidad tus aventuras
                </h1>
                <div class="text-hacemos">
                    <p class="">
                        Empezamos la aventura a principios del año 2000. Eramos solo 2
                        personas en la compañia. Año tras año fuimos aumentando de empleados
                        debido a la alta demanda que ibamos teniendo. Estamos ubicados en
                        Mallorca aunque tenemos empleados en puntos estrategicos donde
                        ofrecemos los tours.
                    </p>

                    <p class="hide-text-phone">
                        La profesionalidad de nuestros guias locales es muy importante.
                        Quien conoce mejor el lugar y los que pueden brindar un trato
                        cercano y profesional son ellos.
                    </p>

                    <p class="mb-lg-5 hide-text-phone">
                        Todos nuestros empleados estan constantemente mejorando sus
                        habilidades y conocimiento con certificados en diferentes
                        categorias.
                    </p>
                    <p class="hide-text-phone">
                        Empezamos la aventura a principios del año 2000. Eramos solo 2
                        personas en la compañia. Año tras año fuimos aumentando de empleados
                        debido a la alta demanda que ibamos teniendo. Estamos ubicados en
                        Mallorca aunque tenemos empleados en puntos estrategicos donde
                        ofrecemos los tours.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center margin-bottom-c">
        <div class="d-lg-flex p-lg-0 col-md-10 col-lg-12">
            <div class="text-center px-2 hide-text-destinos">
                <div class="text-container">
                    <h5 class="text-objetivos-valores mb-4">Lo que nos diferencia</h5>
                    <p class="fw-light text-objetivos-description">
                        Los factores clave de nuestra empresa
                    </p>
                </div>
            </div>
            <div class="icon-container col-lg-4 text-center px-lg-3">
                <img class="mb-4" src="${pageContext.request.contextPath}/bootstrap/img/sobreNosotrosIcon1.svg" />
                <div class="text-container">
                    <h5 class="text-objetivos">Nuestros valores</h5>
                    <p class="fw-light text-objetivos-description">
                        Somos una empresa con valores y ética profesional para
                        ofrecer el mejor producto posible a nuestros clientes
                    </p>
                </div>
            </div>
            <div class="icon-container col-lg-4 text-center px-lg-3">
                <img class="mb-4" src="${pageContext.request.contextPath}/bootstrap/img/sobreNosotrosIcon2.svg" />
                <div class="text-container">
                    <h5 class="text-objetivos">Nuestra misión</h5>
                    <p class="fw-light text-objetivos-description">
                        Nuestra misión es convertirnos en tener un vino de referencia nacional
                    </p>
                </div>
            </div>
            <div class="icon-container col-lg-4 text-center px-lg-3">
                <img class="mb-4" src="${pageContext.request.contextPath}/bootstrap/img/sobreNosotrosIcon3.svg" />
                <div class="text-container">
                    <h5 class="text-objetivos">Nuestra ventaja competitiva</h5>
                    <p class="fw-light text-objetivos-description">
                        Nuestra ventaja competitiva es ofrecer un producto excelente
                        y diferenciado de la competencia asumiendo menos costes
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="justify-content-center margin-bottom-d">
        <h4 class="fw-bold text-center text-hacemos-h1 mb-4 mb-md-5">Conoce nuestro equipo</h4>
    </div>
    <div class="row justify-content-md-center div-size-tablet margin-bottom-c">
        <div class="d-lg-flex justify-content-center col-md-10 col-lg-12">
            <div class="col-lg-3 icon-container">
                <img class="img-fluid mb-4 w-100" src="${pageContext.request.contextPath}/bootstrap/img/Juan.png">
                <div class="text-container">
                    <h5 class="text-start text-objetivos">Juan Gómez</h5>
                    <p class="text-start text-fundadora">Fundador</p>
                    <p class="text-lg-start mb-5 text-fundadora-description">
                        Soy una persona muy proactiva, que le gusta ayudar, hacer grupo
                        para que todos se sientan a gusto.
                    </p>
                </div>
            </div>
            <div class="col-lg-3 icon-container mx-lg-4">
                <img class="img-fluid mb-4 w-100" src="${pageContext.request.contextPath}/bootstrap/img/Ana.png">
                <div class="text-container">
                    <h5 class="text-start text-objetivos">Ana Ramírez</h5>
                    <p class="text-start text-fundadora">Recursos humanos</p>
                    <p class="text-lg-start mb-5 text-fundadora-description">
                        Soy una persona que empatiza muy rápido con las personas,
                        con buena actitud para aceptar críticas constructivas.
                    </p>
                </div>
            </div>
            <div class="col-lg-3 icon-container">
                <img class="img-fluid mb-4 w-100" src="${pageContext.request.contextPath}/bootstrap/img/Silvia.png">
                <div class="text-container">
                    <h5 class="text-start text-objetivos">Silvia Ramírez</h5>
                    <p class="text-start text-fundadora">Marketing</p>
                    <p class="text-lg-start mb-lg-5 text-fundadora-description">
                        Soy una persona que le gusta crear, que no puede estar quieta
                        sin intentar resolver un problema que pueda surgir en el momento.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="hide-text-destinos">
            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 margin-bottom-p">
                <h1 class="text-center mb-lg-4 mb-3 text-destinos-h1">Destinos</h1>
                <p class="text-destinos-phone mb-4">
                    Desde increibles playas hasta misteriosas cuevas por descubrir.
                    Además de patrimonio mundial la Sierra de tramuntana es perfecta
                    para los que quieren emociones fuertes como el ciclismo.
                </p>
                <p class="text-destinos-phone">
                    Esta preciosa isla ofrece a parte de una naturaleza inolvidable
                    una gran cantidad de restaurantes.
                </p>
            </div>
        </div>
    </div>
    <div class="row margin-bottom-c">
        <div class="col d-lg-flex">
            <div class="d-flex justify-content-center col-lg-6 me-lg-4 mb-md-4 mb-5">
                <img class="img-bot-phone" src="${pageContext.request.contextPath}/bootstrap/img/barrica.png"
                    alt="Islas Baleares" />
                <img class="img-bot w-100" src="${pageContext.request.contextPath}/bootstrap/img/barrica.png"
                    alt="Islas Baleares" />

            </div>
            <div
                class="col-lg-6 d-flex align-items-center hide-text-islas pe-lg-4 justify-content-md-center justify-content-lg-start">
                <div class="col-md-10 col-lg-11">
                    <div class="text-islas">
                        <h1 class="text-islas-h1 mb-md-3">Bodega</h1>
                        <p class="">
                          Todos nuestros empleados estan constantemente mejorando sus
                        habilidades y conocimiento con certificados en diferentes
                        categorias. En la nueva bodega nos esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una cata perfecta del vino y nos explicara los aromas de nuestro vino.
Disfrutaremos de una cata por todo lo alto con una degustación de los mejores pinchos de nuestra zona. En ultimo lugar nos dirigiremos a nuestra bodega mas nueva donde veremos todas nuestra barricas de mas de 2 metros de altura.
                        </p>
                        <p class="">
                           Todos nuestros empleados estan constantemente mejorando sus
                        habilidades y conocimiento con certificados en diferentes
                        categorias. En la nueva bodega nos esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una cata perfecta del vino y nos explicara los aromas de nuestro vino.
Disfrutaremos de una cata por todo lo alto con una degustación de los mejores pinchos de nuestra zona. En ultimo lugar nos dirigiremos a nuestra bodega mas nueva donde veremos todas nuestra barricas de mas de 2 metros de altura.
                        </p>
                       
                        <p class="">
                           Todos nuestros empleados estan constantemente mejorando sus
                        habilidades y conocimiento con certificados en diferentes
                        categorias. En la nueva bodega nos esperara nuestro Enólogo Pepe, donde nos enseñara a hacer una cata perfecta del vino y nos explicara los aromas de nuestro vino.
Disfrutaremos de una cata por todo lo alto con una degustación de los mejores pinchos de nuestra zona. En ultimo lugar nos dirigiremos a nuestra bodega mas nueva donde veremos todas nuestra barricas de mas de 2 metros de altura.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pb-5"></div>

</div>


			<jsp:include page="reserva.jsp"></jsp:include> 						<!-- RESERVA -->


	
		    <jsp:include page="footer.jsp"></jsp:include>  						<!-- FOOTER --> 			



</body>
</html>
	
        

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>Banner</title>
							<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/banner.css"/>	
							<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"/>
</head>
<body>



<!-- BANNER -->
<div class="row row-desk desk container-fluid m-0 p-0" style="background-image: url('${pageContext.request.contextPath}/bootstrap/img/cta.jpeg');
        	background-size: cover; background-position: center; background-repeat: no-repeat;">
    <div class="row col-md-12 col-sm-11 col-xs-11">
        <div class="container-fluid tamaño-contenedor">
            <div class="d-flex row h-100">
                <div class="col-md-7 col-sm-12 col-xs-12 banner-info-container col-lg-6">
                    <h1 class="text-style col-lg-12">
                        Disfruta de nuestros vinos
                    </h1>
                    <p class="lead text-style-1 col-lg-9">
                       Visita nuestra bodega
                    </p>

                    <div class="">
                        <!-- <input type="text" class="form-control" placeholder="Destinos" aria-label="Destinos"
                            aria-describedby="button-addon2"> -->
                        <button class="btn btn-primary btn-lg" type="button" id="button-addon2"> <a class="color-text" href="/contacto/formContacto">RESERVAR</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 
<div class="row row-tablett tablett container-fluid m-0 p-0" style="background-image: url('${pageContext.request.contextPath}/bootstrap/img/cta.jpeg');
        	background-size: cover; background-position: center; background-repeat: no-repeat;">
    <div class="row col-md-12 col-sm-11 col-xs-11">
        <div class="container-fluid tamaño-contenedor">
            <div class="d-flex row h-100">
                <div class="col-md-6 col-sm-12 col-xs-12 banner-info-container">
                    <h1 class="text-style">
                         Disfruta de nuestros vinos
                    </h1>
                    <p class="lead text-style-1 col-10">
                         Visita nuestra bodega
                    </p>

                    <div class="">
                        <!-- <input type="text" class="form-control" placeholder="Destinos" aria-label="Destinos"
                            aria-describedby="button-addon2"> -->
                            <button class="btn btn-primary btn-lg" type="button" id="button-addon2"><a class="color-text" href="/contacto/formContacto">RESERVAR</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 
<div class="row row-phone phone container-fluid m-0 p-0" style="background-image: url('${pageContext.request.contextPath}/bootstrap/img/cta.jpeg');
        	background-size: cover; background-position: center; background-repeat: no-repeat;">
    <div class="row col-md-12 col-sm-11 col-xs-11">
        <div class="container-fluid tamaño-contenedor">
            <div class="d-flex row h-100">
                <div class="col-md-7 p-0 m-0 mt-5 ps-5 col-12 col-sm-12 banner-info-container">
                    <h1 class="text-style mt-5 col-8">
                        Disfruta de nuestros vinos
                    </h1>
                    <p class="lead text-style-1 col-8">
                        Visita nuestra bodega
                    </p>

                    <div class="">
                        <!-- <input type="text" class="form-control" placeholder="Destinos" aria-label="Destinos"
                            aria-describedby="button-addon2"> -->
                            <button class="btn btn-primary btn-lg" type="button" id="button-addon2"><a class="color-text" href="/contacto/formContacto">RESERVAR</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




</body>
</html>
	
        

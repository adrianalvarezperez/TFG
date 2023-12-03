<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<title>Sponsor</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">

   								<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/sponsor.css"/>
   								<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"/>
</head>
<body>



<!-- SPONSOR -->
  <div class="container-fluid div-size">
    <div class="row">
    
        <div class="col-md-12 col-sm-12 col-xs-12 title-container mb-2 mt-5">
            <p class="text-center text-header">También nos puedes encontrar en: </p>
        </div>
        
        <div class="d-lg-flex d-sm-flex justify-content-lg-center justify-content-evenly sponsors-container mb-5 hide-content-phone div-flex" >
            <div class="d-md-flex justify-content-md-around">
                <div class="sponsor-container col-md-3 col-lg-4 justify-content-lg-between">
                     <img src="${pageContext.request.contextPath}/bootstrap/img/boltshift.svg" class="card-img-top" alt="..." /> 
                </div>
                
                <div class="sponsor-container col-md-3 col-lg-4">
                   <img src="${pageContext.request.contextPath}/bootstrap/img/featherDev.svg" class="card-img-top" alt="..." /> 
                </div>

                <div class="sponsor-container col-md-3 col-lg-4">
                   <img src="${pageContext.request.contextPath}/bootstrap/img/lightbox.svg" class="card-img-top" alt="..." /> 
                </div>
            </div>
            
            
            <div class="d-md-flex justify-content-md-around">
                <div class="sponsor-container col-md-3 col-lg-4">
                    <img src="${pageContext.request.contextPath}/bootstrap/img/spherule.svg" class="card-img-top" alt="..." /> 
                </div>

                <div class="sponsor-container col-md-3 col-lg-4">
                    <img src="${pageContext.request.contextPath}/bootstrap/img/globalBank.svg" class="card-img-top" alt="..." /> 
                </div>

                <div class="sponsor-container col-md-3 col-lg-4">
                    <img src="${pageContext.request.contextPath}/bootstrap/img/nietzsche.svg" class="card-img-top" alt="..." /> 
                </div>
            </div>
        </div>
    </div>
</div>






</body>
</html>
	
        

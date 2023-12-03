<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Formulario Tarjeta Bancaria</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">	
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />

<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>	
</head>
<body>

	  <jsp:include page="inicio.jsp"></jsp:include><br><br><br>  		<!-- INICIO -->






<div class="container">
    <h2 class="py-3 mb-4">Alta Tarjeta de Crédito</h2>
    <form action="/tarjeta/altaTarjeta" method="post">
        <div class="mb-3">
            <label for="titular" class="form-label">Titular</label>
            <input type="text" class="form-control form-control-sm" name="nombreTitular" id="titular" placeholder="Titular" autofocus required>
            <div class="invalid-feedback">El titular es requerido.</div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="numero-tarjeta" class="form-label">Número de Tarjeta</label>
                <input type="text" class="form-control form-control-sm" name="numeroTarjeta" id="numero-tarjeta" placeholder="Número de tarjeta" required minlength="16" maxlength="16" pattern="[0-9]{16}">
                <div class="invalid-feedback">Ingrese un número de tarjeta válido (16 dígitos).</div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="cvv" class="form-label">CVV</label>
                <input type="text" class="form-control form-control-sm" name="cvv" id="cvv" placeholder="CVV" required minlength="3" maxlength="3" pattern="[0-9]{3}">
                <div class="invalid-feedback">Ingrese un código CVV válido (3 dígitos numéricos).</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="mes-caducidad" class="form-label">Mes de Caducidad</label>
                <input type="number" class="form-control form-control-sm" name="mesCaducidad" id="mes-caducidad" placeholder="01-12" required min="1" max="12">
                <div class="invalid-feedback">Ingrese un mes de caducidad válido (1-12).</div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="anio-caducidad" class="form-label">Año de Caducidad</label>
                <input type="number" class="form-control form-control-sm" name="anioCaducidad" id="anio-caducidad" placeholder="20xx" required min="2023" max="2099">
                <div class="invalid-feedback">Ingrese un año de caducidad válido (2023 en adelante).</div>
            </div>
        </div>
        <br>
        <input type="submit" class="btn btn-primary" value="Alta tarjeta"><p style="display:inline"> ${mensaje}</p>
    </form>
</div>
<br><br><br><br>




		<jsp:include page="footer.jsp"></jsp:include>  						<!-- FOOTER -->
	
	
	

</body>
</html>
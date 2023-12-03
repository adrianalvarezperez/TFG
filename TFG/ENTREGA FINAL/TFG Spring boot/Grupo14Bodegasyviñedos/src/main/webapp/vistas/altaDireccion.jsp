<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Formulario Direcciones</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>	
</head>
<body>


	<jsp:include page="inicio.jsp"></jsp:include>  				<!-- INICIO -->

	<br><br>

	<!-- ALTA DIRECCION -->
	<div class="container">
    <h2 class="py-3 mb-4">Alta dirección</h2>
    <form action="/direccion/altaDireccion" method="post">
        <div class="mb-3">
            <label for="calle" class="form-label">Calle</label>
            <input type="text" class="form-control form-control-sm" name="calle" id="calle" placeholder="Calle" autofocus required>
            <div class="invalid-feedback">La calle es requerida.</div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="codigo-postal" class="form-label">Código Postal</label>
               		<input type="text" class="form-control form-control-sm" name="codigoPostal" id="codigo-postal" minlength="5" maxlength="5" placeholder="Código Postal" required>


                <div class="invalid-feedback">Ingrese un código postal válido.</div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="localidad" class="form-label">Localidad</label>
                <input type="text" class="form-control form-control-sm" name="localidad" id="localidad" placeholder="Localidad" required>
                <div class="invalid-feedback">La localidad es requerida.</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="numero" class="form-label">Número de casa</label>
                <input type="text" class="form-control form-control-sm" name="numero" id="numero" maxlength="3" placeholder="Número de casa" required>
                <div class="invalid-feedback">Ingrese un número de casa válido.</div>
            </div>
            <div class="col-md-3 mb-3">
                <label for="pisso" class="form-label">Piso</label>
                <input type="text" class="form-control form-control-sm" name="piso" id="piso" placeholder="Piso">
            </div>
            <div class="col-md-3 mb-3">
                <label for="letra" class="form-label">Letra</label>
               <input type="text" class="form-control form-control-sm" name="letra" id="letra" pattern="[a-zA-Z]" maxlength="1" placeholder="Letra" required>
            </div>
        </div>
        <br>
        <input type="submit" class="btn btn-primary" value="Alta dirección"><p style="display:inline"> ${mensaje}</p>
    </form>
</div>
<br><br><br>

	<jsp:include page="reserva.jsp"></jsp:include> 						<!-- RESERVA -->

	<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>
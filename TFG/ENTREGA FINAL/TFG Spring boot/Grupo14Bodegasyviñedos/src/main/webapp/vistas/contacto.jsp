<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Contacto</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
					<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/contacto.css" />
					<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />



</head>
<body>





	<jsp:include page="inicio.jsp"></jsp:include>		<!-- NAV BAR -->
	







	<div class="container-fluid justify-content-center">
		<div class="row mb-lg-3 mb-5">
			<div class="d-lg-flex mb-lg-5 p-0">
				<img class="img-top w-100" src="${pageContext.request.contextPath}/bootstrap/img/contacto.png" alt="contact" /> 
				<img class="img-top-phone w-100" src="${pageContext.request.contextPath}/bootstrap/img/contactoPhone.png" alt="contact" /> 
				<img class="img-top-tablet w-100" src="${pageContext.request.contextPath}/bootstrap/img/contactoTablet.png" alt="contact" />
			</div>
		</div>
		<div class="container-fluid phone-size margin-bottom-c">
			<div class="row">
				<div class="d-lg-flex">
					<div class="col-lg-6 col-md-12 mb-md-5 mb-3">
						<div class="row">
							<div class="">
								<div class="d-flex justify-content-lg-center justify-content-md-center ps-lg-4">
									<h4 class="col-lg-6 text-header mb-2">Contacto</h4>
								</div>
								<div class="d-flex justify-content-lg-center justify-content-md-center ps-lg-4 mb-lg-3">
									<p class="col-lg-6 text-second-header">Nuestro equipo te ayudará con tus dudas.</p>
								</div>
							</div>
							
							
							<div class="d-flex justify-content-lg-center justify-content-md-center ps-lg-4">
								<div class="col-1 p-0 text-end">
									<img class="" src="${pageContext.request.contextPath}/bootstrap/img/comentario.svg" />
								</div>
								<div class="col-lg-6 col-md-6 text-start mb-2 ps-2 mt-1">
									<h4 class="text-info-header mb-lg-2">Contacta con nosotros por email</h4>
									<p class="text-description mb-0 mb-2 mb-lg-2">Nuestro equipo te ayudara con tus dudas.</p>
									<p class="text-second-description mb-0 mb-1 mb-lg-4">info@bodegas&viñedos.com</p>
								</div>
							</div>
							
							
							<div
								class="d-flex justify-content-lg-center justify-content-md-center ps-lg-4">
								<div class="col-1 p-0 text-end">
									<img class="" src="${pageContext.request.contextPath}/bootstrap/img/maps.svg" />
								</div>
								<div class="col-lg-6 col-md-6 text-start mb-2 ps-2 mt-1">
									<h4 class="text-info-header mb-lg-2">Oficina</h4>
									<p class="text-description mb-0 mb-2 mb-lg-2">Ven a nuestra oficina</p>
									<p class="text-second-description mb-0 mb-1 mb-lg-4">Villarobledo, 17 Castilla la Mancha, Spain</p>
								</div>
							</div>
							
							
							<div class="d-flex justify-content-lg-center justify-content-md-center ps-lg-4">
								<div class="col-1 p-0 text-end">
									<img class="" src="${pageContext.request.contextPath}/bootstrap/img/tlf.svg" />
								</div>
								<div class="col-lg-6 col-md-6 text-start ps-2 mt-1">
									<h4 class="text-info-header mb-0 mb-1 mb-lg-2">Teléfono de contacto</h4>
									<p class="text-description mb-0 mb-1 mb-lg-3">De lunes a viernes desde 10:00 a 17:00</p>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="d-flex justify-content-lg-start justify-content-md-center col-lg-6 col form-phone">
  <div class="ms-lg-3 col-lg-8 col col-md-8">
    <div class="">
      <h2 class="text-header">Reserva con nosotros</h2>
      <form id="formulario" method="post" action="mailto:tu-email@example.com">
        <div class="row">
          <div class="col-lg mb-3">
            <label for="name" class="form-label">Nombre</label>
            <input type="text" class="form-control" placeholder="Nombre" id="nameId" autofocus required minlength="2">
            <div class="invalid-feedback">El nombre es requerido y debe tener al menos 2 caracteres.</div>
          </div>
          <div class="col-lg mb-3">
            <label for="surname" class="form-label">Apellidos</label>
            <input type="text" class="form-control" placeholder="Apellidos" id="surnameId" required minlength="2">
            <div class="invalid-feedback">Los apellidos son requeridos y deben tener al menos 2 caracteres.</div>
          </div>
        </div>

        <div class="mb-3">
          <label for="email" class="form-label">Dirección de correo electrónico</label>
          <input type="email" class="form-control" placeholder="Email" id="emailId" required>
          <div class="invalid-feedback">Ingrese un correo electrónico válido.</div>
        </div>

        <div class="mb-3">
          <label for="phoneNumber" class="form-label">Teléfono</label>
          <input type="tel" class="form-control" placeholder="+34 971781000" id="tlfId" required pattern="[0-9]{9,15}">
          <div class="invalid-feedback">Ingrese un número de teléfono válido.</div>
        </div>

        <div class="mb-3">
          <label for="message" class="form-label">Mensaje</label>
          <textarea class="form-control" placeholder="Escribe tu mensaje..." id="message" rows="5" required></textarea>
          <div class="invalid-feedback">El mensaje es requerido.</div>
        </div>

        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="privacy" required>
          <label class="form-check-label" for="privacy">Acepto la política de privacidad.</label>
          <div class="invalid-feedback">Debe aceptar la política de privacidad.</div>
        </div>

        <div class="d-grid gap-2">
          <button type="submit" class="btn btn-primary">ENVIAR MENSAJE</button>
        </div>
      </form>
    </div>
  </div>
</div>

					
					
				</div>
			</div>
		</div>
	</div><br><br><br>	
		
		



	

	<jsp:include page="preguntas.jsp"></jsp:include> <br><br><br>		<!-- PREGUNTAS -->


	<jsp:include page="reserva.jsp"></jsp:include>						<!-- RESERVA -->


	<jsp:include page="footer.jsp"></jsp:include>						<!-- FOOTER -->




</body>
</html>



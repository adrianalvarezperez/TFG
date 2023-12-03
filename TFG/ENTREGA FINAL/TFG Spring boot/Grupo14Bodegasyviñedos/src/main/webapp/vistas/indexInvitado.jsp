<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>  
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Home invitado</title>	 
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">		
</head>
<body>


		  <jsp:include page="inicio.jsp"></jsp:include>  						<!-- INICIO -->
		 
		 
			
		  <jsp:include page="banner.jsp"></jsp:include>  						<!-- BANNER -->
	
  
		  <jsp:include page="section.jsp"></jsp:include> <br><br><br>  			<!-- SECTION -->
		 
		 

		  <jsp:include page="sponsor.jsp"></jsp:include> <br><br> 				<!-- SPONSOR -->
	
	

		  <jsp:include page="sobreNosotros.jsp"></jsp:include><br><br> 			<!-- SOBRE_NOSOTROS -->
	
	
	
		  <jsp:include page="preguntas.jsp"></jsp:include> 	<br><br><br>		<!-- PREGUNTAS -->


	
		  <jsp:include page="reserva.jsp"></jsp:include> 						<!-- RESERVA -->


	
		  <jsp:include page="footer.jsp"></jsp:include>  						<!-- FOOTER -->
			
				
</body>
</html>
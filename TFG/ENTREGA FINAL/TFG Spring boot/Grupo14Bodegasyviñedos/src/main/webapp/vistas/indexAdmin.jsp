<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Home admin</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
				<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">	
</head>
<body>

			<jsp:include page="inicio.jsp"></jsp:include>		<!-- INICIO -->
			
			
			<br><br><br><br><br><br><br><br>



					<h1 class="text-center bg-dark text-light py-3 mb-4">Bienvenido administrador 
						<p>
	     					<sec:authorize access="hasAuthority('ROLE_ADMINISTRADOR')">  ${usuario.nombre}	<!-- <sec:authentication property="principal.username"/> -->
	     					</sec:authorize>
	     				</p>   
	     			</h1>
						
						
			 <br><br><br><br><br><br><br><br>
						
						
			 <jsp:include page="footer.jsp"></jsp:include>  	<!-- FOOTER -->
				
				
</body>
</html>
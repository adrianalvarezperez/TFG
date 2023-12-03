<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Iniciar sesión</title>
 <meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
    			<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
</head>
<body>




 	<jsp:include page="inicio.jsp"></jsp:include>  						<!-- INICIO -->
	<br><br><br><br>

    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <h2 class="mb-4">Iniciar sesión</h2>
                <form action="${pageContext.request.contextPath}/loginForm" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Nombre de usuario:</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Introduce usuario o correo electronico" autofocus required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Contraseña:</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Introduce contraseña" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Iniciar sesión</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p style="color:red;display:inline">${error}</p>
                </form>
            </div>
        </div>
    </div><br><br><br><br><br><br>

    
    
    <jsp:include page="footer.jsp"></jsp:include>  						<!-- FOOTER -->
    
    
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    
</body>
</html>






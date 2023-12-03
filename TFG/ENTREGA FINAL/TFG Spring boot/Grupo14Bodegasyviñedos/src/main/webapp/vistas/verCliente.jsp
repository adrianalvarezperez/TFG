<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Cliente</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
				<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
</head>
<body>


	<jsp:include page="inicio.jsp"></jsp:include>		<!-- INICIO -->




	<br><br>
<div class="container my-5">
    <!-- <a href="/producto/altaProducto" class="btn btn-primary">Dar de alta productos</a><br><br> -->
    <h1 class="py-3 mb-4">Datos usuario</h1>
    <div class="table-responsive">
        <table class="table">
            <caption>
                <tr>
                    <th>Id</th>
                    <th>Username</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Email</th>
                    <th></th>
                </tr>
            </caption>
            <tbody>
                <tr class="active-row">
                    <td>${datos.idUsuario}</td>
                    <td>${datos.username}</td>
                    <td>${datos.nombre}</td>
                    <td>${datos.apellidos}</td>
                    <td>${datos.email}</td>
                    <%-- <td>${datos.password}</td> --%>
                    <td><a href="/cliente/modificar/${datos.idUsuario}" class="lin4"><button class="btn btn-primary">Modificar</button></a></td>
                    <%-- <td><a href="/producto/eliminarProducto/${ele.idProducto}" class="lin4"><button class="btn btn-primary">Borrar</button></a></td> --%>
                </tr>
            </tbody>
        </table>
    </div>
    <h5 class="text-center" style="font-size: 15px;">${mensaje}</h5>
</div>
<br><br><br>







	<jsp:include page="footer.jsp"></jsp:include>		<!-- FOOTER -->



<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
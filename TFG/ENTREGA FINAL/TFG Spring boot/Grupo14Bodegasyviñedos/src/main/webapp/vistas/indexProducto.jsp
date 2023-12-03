<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Productos</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
				<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
</head>
<body>


	<jsp:include page="inicio.jsp"></jsp:include>		<!-- INICIO -->




	<br><br>
<div class="container my-5">
    <!-- <a href="/producto/altaProducto" class="btn btn-primary">Dar de alta productos</a><br><br> -->
    <h1 class="text-center bg-dark text-light py-3 mb-4">TODOS LOS PRODUCTOS</h1>
    <div class="table-responsive">
        <table class="table">
            <caption>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>DESCRIPCION</th>
                    <th>PRECIO</th>
                    <th>STOCK</th>
                    <th></th>
                    <th></th>
                </tr>
            </caption>
            <tbody>
                <c:forEach var="ele" items="${listaProducto}">
                    <tr class="active-row">
                        <td>${ele.idProducto}</td>
                        <td>${ele.nombre}</td>
                        <td>${ele.descripcion}</td>
                        <td>${ele.precio}€</td>
                        <td>${ele.stock}</td>
                        <td><a href="/producto/modificarProducto/${ele.idProducto}" class="lin4"><button class="btn btn-primary">Modificar</button></a></td>
                        <%-- <td><a href="/producto/eliminarProducto/${ele.idProducto}" class="lin4"><button class="btn btn-primary">Borrar</button></a></td> --%>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <h1 class="text-center">${mensaje}</h1>
</div>
<br><br><br>




	<jsp:include page="footer.jsp"></jsp:include>		<!-- FOOTER -->



<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
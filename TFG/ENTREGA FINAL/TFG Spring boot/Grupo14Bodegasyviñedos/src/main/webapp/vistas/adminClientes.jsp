<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
<title>Lista clientes compras</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">

							<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">

</head>
<body>


<jsp:include page="inicio.jsp"></jsp:include>


<br><br><br><br>

<div class="container my-5">
    <div class="jumbotron">
        <h1 class="text-center bg-dark text-light py-3 mb-4">Listado de clientes con compras</h1>
    </div>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">APELLIDOS</th>
                    <th scope="col">Cantidad de pedidos</th>
                    <th scope="col">Gastado</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cliente" items="${clientes}">
                    <tr>
                        <td>${cliente.nombre}</td>
                        <td>${cliente.apellidos}</td>
                        <td>${cliente.compras.size()}</td>
                        <c:set var="total" value="0" />
                        <c:forEach var="compra" items="${cliente.compras}">
                            <c:forEach var="linea" items="${compra.lineasDeCompras}">
                                <c:set var="subtotal" value="${linea.precioUnitario * linea.cantidad}" />
                                <c:set var="total" value="${total + subtotal}" />
                            </c:forEach>
                        </c:forEach>
                        <td>Total: ${total} €</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="text-center">
        <h3>${mensaje}</h3>
    </div>
</div><br><br><br><br><br><br>








			<jsp:include page="footer.jsp"></jsp:include>			<!-- FOOTER -->




</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/BV.png" type="image/x-icon">
    <title>Dirección y Pago</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <jsp:include page="inicio.jsp"></jsp:include>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <form method="post" action="/compra/procesar" class="my-5">



                    <c:set var="productosCarrito" value="${requestScope.carrito}" />
                    <c:if test="${not empty productosCarrito}">
                        <h1 class="text-center bg-dark text-light py-3 mb-4">Checkout</h1>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>ID PRODUCTO</th>
                                        <th>NOMBRE PRODUCTO</th>
                                        <th>PRECIO</th>
                                        <th>Cantidad</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="producto" items="${productosCarrito}">
                                        <tr>
                                            <td>${producto.productoDTO.idProducto}</td>
                                            <td>${producto.productoDTO.nombre}</td>
                                            <td>${producto.precioVenta}€</td>
                                            <td>${producto.cantidad}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>



                        <br><hr>
                        <h2 class="">Direcciones</h2>
                        <c:set var="usuario" value="${requestScope.usuario}" />
                        <c:if test="${empty usuario.direcciones}">
                            <h2 class="text-center"></h2>
                            <div class="text-center">
                                <a href="/direccion/altaDireccion" class="btn btn-primary mt-3">Añadir</a>
                            </div>
                        </c:if>
                        <c:if test="${not empty usuario.direcciones}">
                            <div class="text-center mt-4">
                                <c:forEach var="direccion" items="${usuario.direcciones}">
                                    <div class="form-check form-check-inline">
                                        <img style="max-width:100px;max-height:500px;" src="${pageContext.request.contextPath}/bootstrap/img/location2.png" alt="location" class="img-fluid tarjeta-imagen">&nbsp;&nbsp;&nbsp;&nbsp;
                                        <label for="direccion${direccion.idDireccion}" class="form-check-label">
                                            <input type="radio" name="direccion" id="direccion${direccion.idDireccion}" value="${direccion.idDireccion}" class="form-check-input" required>
                                            ${direccion.calle} ${direccion.numero} ${direccion.piso} ${direccion.letra}
                                        </label>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:if>

                        <br><br>




                        <hr>
                        <h2 class="">Tarjetas Bancarias</h2>
                        <c:if test="${empty usuario.tarjetasBancarias}">
                            <h2 class="text-center"></h2>
                            <div class="text-center">
                                <a href="/tarjeta/altaTarjeta" class="btn btn-primary mt-3">Añadir</a>
                            </div>
                        </c:if>
                        <c:if test="${not empty usuario.tarjetasBancarias}">
                            <div class="text-center mt-4">
                                <c:forEach var="tarjeta" items="${usuario.tarjetasBancarias}">
                                    <div class="form-check form-check-inline">
                                        <img style="max-width:150px;max-height:500px;margin-left:20px;" src="${pageContext.request.contextPath}/bootstrap/img/tarject.png" alt="Tarjeta Bancaria" class="img-fluid tarjeta-imagen">&nbsp;&nbsp;
                                        <label for="tarjeta${tarjeta.idTarjeta}" class="form-check-label">
                                            <input type="radio" name="tarjeta" id="tarjeta${tarjeta.idTarjeta}" value="${tarjeta.idTarjeta}" class="form-check-input" required>
                                            ${tarjeta.numeroTarjeta}
                                        </label>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:if>
                        <hr>
                        <div class="text-center mt-5">
                            <input class="btn btn-primary btn-lg btn-block py-3 w-50" type="submit" value="Comprar">
                        </div>
                    </c:if>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

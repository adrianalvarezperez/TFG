<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Preguntas</title>
<meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0">
							<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/cssProyecto/preguntas.css" />
							<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
							
							<script src="https://unpkg.com/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
</head>
<body>		


	<!-- FAQ -->
	<div class="phone-size-2 mb-4">
    <div class="container-fluid">
        <div class="row">
            <div class="col text-center mb-lg-5 mb-md-5">
                <h5 class="card-title mb-4">Preguntas frecuentes</h5>
                <p class="card-text">Disfruta de nuestras experiencias de la mejor manera posible</p>
            </div>
            <div class="d-lg-flex justify-content-center mb-3">
                <div class="col-lg-9">
                    <div class="accordion" id="accordionExample">
                        <!-- PREGUNTA 1 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    ¿Qué política de reembolso ofrecen?
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Solo reemplazamos los artículos si están defectuosos o dañados. Si necesitas cambiarlo por el mismo artículo, envíanos un email a bodegas&viñedos@gmail.com y envía tu artículo a: Villarobledo, 17 Castilla la Mancha, Spain.
                                </div>
                            </div>
                        </div>

                        <!-- PREGUNTA 2 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    ¿Qué visitas ofrecen a sus clientes?
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Ofrecemos un tour por la bodega y los viñedos. Al finalizar el recorrido realizaremos una cata de nuestros productos.
                                </div>
                            </div>
                        </div>

                       <!-- PREGUNTA 3 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    ¿Existe una tienda física en la bodega?
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Sí, en nuestra bodega podrás encontrar diversos artículos para comprar.
                                </div>
                            </div>
                        </div>

                        <!-- PREGUNTA 4 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    ¿Cuál es el número máximo de personas por visita?
                                </button>
                            </h2>
                            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    El aforo máximo permitido en nuestras instalaciones es de 150 personas.
                                </div>
                            </div>
                        </div>

                        <!-- PREGUNTA 5 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFive">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    ¿Con cuánta antelación se debe reservar la visita?
                                </button>
                            </h2>
                            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Acostumbramos a pedir una semana de antelación para preparar las instalaciones para la visita, pero se podrá gestionar de una manera diferente para casos especiales.
                                </div>
                            </div>
                        </div>

                        <!-- PREGUNTA 6 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSix">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                    ¿Habláis alemán?
                                </button>
                            </h2>
                            <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    No, únicamente hablamos inglés y español. En el caso de que deseen realizar la visita en otro idioma, contamos con intérpretes freelancer.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>





<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Buscador de Hoteles</title>
<link rel="stylesheet" href="css/styles.css"> <link rel="icon" type="image/x-icon" href="images/icon.ico">
</head>
<body>
	<header id="h_header">
		<div class="h_menu h_container">
			<a href="/ProyectoHoteles/inicio"> <img
				class="h_logo" src="images/LOGO EDITADO BLANCO.png" />
			</a>
			<nav id="h_navbar">
				<ul>
					<li><a href="/ProyectoHoteles/inicio">Inicio</a></li>
					<li><a href="/ProyectoHoteles/Ofertas">Paquetes</a></li>
					<li><a href="#">Hoteles</a></li>
					<li><a href="#">Contacto</a></li>
					<li><a href="/ProyectoHoteles/Reservaciones">Reservaciones</a></li>
				</ul>
			</nav>
		</div>
		<div class="h_contenedor-header-hotel">
			<h1>
				Encuentra y Reserva tu Estancia Ideal <br> ¡Hoy Mismo!
			</h1>
			<p>Explora nuestra variedad de hoteles y encuentra tu lugar
				ideal. Usa nuestros filtros por destino, precio y comodidades para
				hallar lo que necesitas. ¡Comienza tu aventura ahora para una
				experiencia memorable!</p>
		</div>
	</header>

	<div class="h_contenedor-principal">
<div class="h_buscador-hoteles">
    <form class="h_formulario" method="post" action="Hoteles">
        <div class="h_grupo">
            <label for="h_destino">¿Adónde vas?</label> 
            <select id="h_destino" name="h_destino">
                <option value="Cartagena" ${h_destino == 'Cartagena' ? 'selected' : ''}>Cartagena de Indias, Colombia</option>
                <option value="SantaMarta" ${h_destino == 'SantaMarta' ? 'selected' : ''}>Santa Marta, Colombia</option>
                <option value="Medellin" ${h_destino == 'Medellin' ? 'selected' : ''}>Medellín, Colombia</option>
                <option value="Bogota" ${h_destino == 'Bogota' ? 'selected' : ''}>Bogotá, Colombia</option>
                <option value="SanAndres" ${h_destino == 'SanAndres' ? 'selected' : ''}>San Andrés, Colombia</option>
            </select>
        </div>
        <div class="h_grupo">
            <label for="h_fecha-entrada">Llegada</label> 
            <input type="date" id="h_fecha-entrada" name="h_fecha_entrada" value="${h_fecha_entrada}">
        </div>
        <div class="h_grupo">
            <label for="h_fecha-salida">Salida</label> 
            <input type="date" id="h_fecha-salida" name="h_fecha_salida" value="${h_fecha_salida}">
        </div>
        <div class="h_huespedes">
            <label for="h_huespedes">Huéspedes</label>
            <div class="h_huespedes-contenedor">
                <div id="h_huespedes-toggle">
                    <span>Cant. Personas y Habitaciones</span>
                </div>
                <ul id="h_huespedes-lista">
                    <li class="h_grupo">
                        <label for="h_adultos">Adultos</label>
                        <input type="number" id="h_adultos" name="h_adultos" value="${h_adultos}">
                    </li>
                    <li class="h_grupo">
                        <label for="h_ninos">Niños</label>
                        <input type="number" id="h_ninos" name="h_ninos" value="${h_ninos}">
                    </li>
                    <li class="h_grupo">
                        <label for="h_habitaciones">Habitaciones</label>
                        <input type="number" id="h_habitaciones" name="h_habitaciones" value="${h_habitaciones}">
                    </li>
                </ul>
            </div>
        </div>
        <div class="h_grupo">
            <button type="submit" class="h_boton-buscar">Buscar</button>
        </div>
    </form>
</div>


		<div class="h_contenido-principal">
			<div id="h_sidebar">
				<section>
					<h2>Filtros</h2>
					<ul>
						<li>
							<h3>Precio</h3> <input type="checkbox" id="h_filtro-bajo"
							value="bajo"> <label for="h_filtro-bajo">Bajo</label> <input
							type="checkbox" id="h_filtro-medio" value="medio"> <label
							for="h_filtro-medio">Medio</label> <input type="checkbox"
							id="h_filtro-alto" value="alto"> <label
							for="h_filtro-alto">Alto</label>
						</li>
						<li>
							<h3>Comodidades</h3> <input type="checkbox" id="h_wifi"
							value="wifi"> <label for="h_wifi">Wifi</label> <input
							type="checkbox" id="h_piscina" value="piscina"> <label
							for="h_piscina">Piscina</label> <input type="checkbox" id="h_spa"
							value="spa"> <label for="h_spa">Spa</label>
						</li>
					</ul>
					<button type="submit" class="h_boton-buscar">Filtrar</button>
				</section>
			</div>

<div class="h_contenido-hoteles">
    <div class="h_hoteles">
        <c:forEach var="hotel" items="${listaHoteles}">
            <section class="h_seccion-variable-hoteles">
                <img class="h_imagen-contenido-hoteles" src="images/${hotel.nombreBd}.jpg" alt="${hotel.nombre}">
                <div class="h_div-descripcion-contenido-hoteles">
                    <div>
                        <h3 class="h_h3-contenido-hoteles">${hotel.nombre}</h3>
                        <h4 class="h_h4-contenido-hoteles">${hotel.ciudad}</h4>
                    </div>
                    <div class="h_div-puntuacion-contenido-hoteles">
                        <div class="h_puntacion-hoteles">${hotel.puntuacion}</div>
                        <div class="h_precio-contenido-hoteles">
                            <fmt:formatNumber value="${hotel.valor}" type="currency" currencySymbol="COP " groupingUsed="true" />
                        </div>
                        <form action="Hoteles" method="post">
                            <input type="hidden" name="hotelId" value="${hotel.id}" />
                            <input type="hidden" name="action" value="reservar" />
                            <input type="hidden" name="h_fecha_entrada" value="${param.h_fecha_entrada}" />
                            <input type="hidden" name="h_fecha_salida" value="${param.h_fecha_salida}" />
                            <input type="hidden" name="h_adultos" value="${param.h_adultos}" />
                            <input type="hidden" name="h_ninos" value="${param.h_ninos}" />
                            <input type="hidden" name="h_habitaciones" value="${param.h_habitaciones}" />
                            <button type="submit" class="h_boton-buscar">Reservar</button>
                        </form>
                    </div>
                </div>
            </section>
        </c:forEach>
    </div>
</div>
		</div>
	</div>

	<footer>
		<p>&copy; 2024 FLYING HIGH</p>
	</footer>
	<script src="scripts/scripts.js"></script>
</body>
</html>

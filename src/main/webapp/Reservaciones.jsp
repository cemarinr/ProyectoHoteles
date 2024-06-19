<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Buscar Reservación</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="icon" type="image/x-icon" href="images/icon.ico">
    
</head>
<body>
<header id="h_header">
        <div class="h_menu h_container">
            <a href="/ProyectoHoteles/inicio"> <img class="h_logo" src="images/LOGO EDITADO BLANCO.png" /></a>
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
            <p>Explora nuestra variedad de hoteles y encuentra tu lugar ideal. Usa nuestros filtros por destino, precio y comodidades para hallar lo que necesitas. ¡Comienza tu aventura ahora para una experiencia memorable!</p>
        </div>
    </header>
    <div class="r_container">
        <h2>Reservaciones</h2>
        <c:if test="${not empty reservas}">
            <table class="r_table">
                <thead>
                    <tr>
                        <th class="r_th">ID</th>
                        <th class="r_th">Usuario ID</th>
                        <th class="r_th">Hotel ID</th>
                        <th class="r_th">Fecha Inicio</th>
                        <th class="r_th">Fecha Fin</th>
                        <th class="r_th">Fecha Reservación</th>
                        <th class="r_th">Estado</th>
                        <th class="r_th">Precio Total</th>
                        <th class="r_th">Adultos</th>
                        <th class="r_th">Niños</th>
                        <th class="r_th">Habitaciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="reserva" items="${reservas}">
                        <tr>
                            <td class="r_td">${reserva.id}</td>
                            <td class="r_td">${reserva.usuarioId}</td>
                            <td class="r_td">${reserva.hotelId}</td>
                            <td class="r_td">${reserva.fechaInicio}</td>
                            <td class="r_td">${reserva.fechaFin}</td>
                            <td class="r_td">${reserva.fechaReservacion}</td>
                            <td class="r_td">${reserva.estado}</td>
                            <td class="r_td">${reserva.precioTotal}</td>
                            <td class="r_td">${reserva.adultos}</td>
                            <td class="r_td">${reserva.ninos}</td>
                            <td class="r_td">${reserva.habitaciones}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty reservas}">
            <center><h2>No haz realizado reservaciones aún.</h2></center>
        </c:if>
    </div>
</body>
</html>

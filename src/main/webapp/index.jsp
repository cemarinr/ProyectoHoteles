<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto_Hoteles</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/imagenes/favicon.ico">
    <style>
        #imagen {
            position: absolute;
            top: 0;
            left: 0;
        }
    </style>
</head>

<body>
    <c:forEach var="image" items="${images}">
        <img src="${pageContext.request.contextPath}/imagenes/${image}" alt="${image}">
    </c:forEach>
    <header class="header">
        <div class="menu container">
            <a href="#" class="logo">logo</a>
            <input type="checkbox" id="menu">
            <label for="menu">
                <img src="${pageContext.request.contextPath}/imagenes/menu.png" class="menu-icono" alt="Menú">
            </label>
            <nav class="navbar">
                <ul>
                    <li><a href="https://edisonfr.github.io/Primer-parcial/">Paquetes</a></li>
                    <li><a href="https://cemarinr.github.io/parcial1/nav/hoteles.html">Hoteles</a></li>
                    <li><a href="#blog">Blog</a></li>
                    <li class="dropdown">
                        <a href="#Aliados">Nuestros Aliados</a>
                        <div class="dropdown-content">
                            <a href="https://www.trivago.com.co">Trivago</a>
                            <a href="https://www.avianca.com/es">Avianca</a>
                        </div>
                    </li>
                    <li><a href="https://www.youtube.com/watch?v=D7GX8oBZ3BM">Lugares Sugeridos</a></li>
                </ul>
            </nav>
        </div>
        <div class="header-content container">
            <h1>FLYING HIGH</h1>
            <p>
                ¡Bienvenido a nuestra página de hoteles, tu destino definitivo para encontrar el alojamiento perfecto para tus próximas aventuras! Sumérgete en el mundo de la hospitalidad y el confort mientras exploras una amplia gama de opciones diseñadas para satisfacer tus necesidades y superar tus expectativas.
            </p>
            <a href="https://revistadiners.com.co/estilo-de-vida/viajes/76787_10-hoteles-de-lujo-para-conocer-en-colombia/" class="btn1">Información</a>
            <img src="${pageContext.request.contextPath}/imagenes/playa.jpg" alt="playa">
        </div>
        </header>

    <section id="hoteles">
        <div class="hoteles-content container">
            <h2>Los Diferentes Tipos De Hoteles</h2>
            <p class="txr-p">
                Explora nuestras opciones de alojamiento en destinos de todo el mundo, desde vibrantes ciudades hasta pintorescos pueblos costeros y exuberantes paisajes naturales. Con la comodidad de reservar en línea y la garantía de un servicio excepcional, estamos aquí para hacer que tu viaje sea lo más sencillo y placentero posible.
            </p>
            <div class="hoteles-group">
                <div class="hoteles-1">
                    <img src="${pageContext.request.contextPath}/imagenes/hotel1.jpg" alt="Hotel 1">
                    <h3>Exquisito Oasis 5 Estrellas</h3>
                    <p>
                        Sumérgete en un mundo de lujo y elegancia en el Exquisito Oasis, un destino de ensueño donde cada detalle está meticulosamente diseñado para ofrecerte una experiencia inolvidable. Ubicado en el corazón de una ciudad vibrante (o en un escenario idílico, dependiendo de la ubicación deseada), nuestro hotel de 5 estrellas es un refugio sofisticado que combina el encanto tradicional con las comodidades modernas.
                    </p>
                </div>
                <div class="hoteles-1">
                    <img src="${pageContext.request.contextPath}/imagenes/hotel2.jpg" alt="Hotel 2">
                    <h3>Winter Hotel</h3>
                    <p>
                        Sumérgete en un mundo de encanto invernal en el Refugio Nevado, un refugio acogedor y cálido en medio de un paisaje nevado espectacular. Ubicado en las majestuosas montañas (o en un entorno nevado idílico, dependiendo de la ubicación deseada), nuestro hotel para invierno es un santuario de comodidad y aventura, perfecto para aquellos que buscan escapar del ajetreo y el bullicio de la vida cotidiana.
                    </p>
                </div>
                <div class="hoteles-1">
                    <img src="${pageContext.request.contextPath}/imagenes/hotel3.jpg" alt="Hotel 3">
                    <h3>Coastal Paradise</h3>
                    <p>
                        Sumérgete en la serenidad del océano y la suave brisa marina en el Paraíso Costero, un refugio idílico situado en la tranquila costa (o en una playa espectacular, dependiendo de la ubicación deseada). Nuestro hotel de playa es un santuario de relajación y aventura, donde cada momento se teje con la magia del mar y la belleza natural que te rodea.
                    </p>
                </div>
            </div>
            <a href="#" class="btn1">Información</a>
        </div>
    </section>

    <section id="Categorias">
        <h3>CATEGORÍAS</h3>
        <ul>
            <li>3 Estrellas</li>
            <li>4 Estrellas</li>
            <li>5 Estrellas</li>
        </ul>
        <br>
        <input type="text" id="nueva-categoria" placeholder="Ingrese una nueva categoría">
        <button type="button" id="agregar-categoria">Agregar Categoría</button>
    </section>

    <main id="services">
        <div class="services-content container">
            <h2>PAQUETES & PROMOCIONES</h2>
            <div class="services-group">
                <div class="services-1">
                    <img src="${pageContext.request.contextPath}/imagenes/hto 1.png" alt="Paquete 1">
                    <h3>Paquete 1</h3>
                </div>
                <div class="services-1">
                    <img src="${pageContext.request.contextPath}/imagenes/hto 2.png" alt="Paquete 2">
                    <h3>Paquete 2</h3>
                </div>
                <div class="services-1">
                    <img src="${pageContext.request.contextPath}/imagenes/hto 3.png" alt="Paquete 3">
                    <h3>Paquete 3</h3>
                </div>
                <div class="services-1">
                    <img src="${pageContext.request.contextPath}/imagenes/hto 4.png" alt="Paquete 4">
                    <h3>Paquete 4</h3>
                </div>
            </div>
            <p>
                ¡Bienvenidos a una experiencia única de hospedaje y relajación! En nuestro hotel, nos enorgullece ofrecer una variedad de paquetes y promociones diseñados para satisfacer todas las necesidades y deseos de nuestros huéspedes. Desde escapadas románticas hasta aventuras familiares, tenemos algo especial para cada ocasión. Sumérjase en el lujo y la comodidad mientras exploramos juntos las emocionantes ofertas que hemos preparado para hacer de su estancia una experiencia inolvidable.
            </p>
        </div>
    </main>

    <section id="blog">
        <h2>BLOG DE NOVEDADES</h2>
        <p>
            Tómate un momento para relajarte, imagina el destino de tus sueños y déjanos guiarte a través de un mundo de comodidad, lujo y experiencias inolvidables. ¡Bienvenidos a nuestro viaje por el mundo de los hoteles!
        </p>
        <div class="blog-content">
            <div class="blog-1">
                <img src="${pageContext.request.contextPath}/imagenes/blog1.jpg" alt="Blog 1">
                <h3>Comodidad</h3>
                <p>
                    En nuestro hotel, la comodidad es mucho más que una simple comodidad; es un compromiso con tu bienestar y satisfacción en cada momento de tu estancia. Desde el momento en que cruzas nuestras puertas, te envolvemos en un ambiente de serenidad y calidez, diseñado para hacer que te sientas como en casa, pero con un toque de lujo añadido.
                </p>
            </div>
            <div class="blog-1">
                <img src="${pageContext.request.contextPath}/imagenes/blog2.jpg" alt="Blog 2">
                <h3>Lujo y Diversión</h3>
                <p>
                    Bienvenido a un oasis de indulgencia y entretenimiento en nuestro lujoso hotel. Desde el momento en que pones un pie en nuestras elegantes instalaciones, te sumergirás en un mundo de confort y placer. Nuestra misión es brindarte una experiencia inolvidable, donde cada detalle está cuidadosamente diseñado para satisfacer tus deseos más exigentes.
                </p>
            </div>
            <div class="blog-1">
                <img src="${pageContext.request.contextPath}/imagenes/promo.jpg" alt="Promoción Especial">
                <h3>Promoción Especial</h3>
                <p>
                    Estamos encantados de presentarles nuestra última oferta especial para escapadas inolvidables. Sumérjase en la esencia del descanso y la aventura con nuestra promoción exclusiva, diseñada para brindarle lo mejor en comodidad, lujo y valor. Ya sea que esté buscando una escapada romántica, una aventura familiar o simplemente un tiempo para relajarse, nuestra promoción especial tiene algo para todos.
                </p>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="footer-content container">
            <div class="footer-section about">
                <h2>Acerca de Nosotros</h2>
                <p>
                    Somos una empresa dedicada a ofrecer experiencias inolvidables a través de nuestros servicios de hospedaje y paquetes turísticos.
                </p>
            </div>
            <div class="footer-section links">
                <h2>Enlaces Rápidos</h2>
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Hoteles</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Contacto</a></li>
                </ul>
            </div>
            <div class="footer-section contact">
                <h2>Contacto</h2>
                <p>Email: contacto@hoteles.com</p>
                <p>Teléfono: +123 456 7890</p>
                <p>Dirección: Calle 123, Ciudad, País</p>
            </div>
        </div>
        <div class="footer-bottom">
            &copy; 2024 Todos los derechos reservados.
        </div>
    </footer>

    <script src="${pageContext.request.contextPath}/script.js"></script>
</body>

</html>

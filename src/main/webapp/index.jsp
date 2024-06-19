<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parcial 1-Programacion III</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" type="image/x-icon" href="images/icon.ico">
    <title>Mover imagen</title>
    <style>
        #imagen{
            position: absolute;
            top: 0;
            left: 0;
        }
    </style>
</head>

<body>
    <header class="header">
        <div class="menu container">
            <a href="#" class="logo">logo</a>
            <input type="checkbox" id="menu">
            <label for="menu">
                <img src="images/menu.png" class="menu-icono" alt="">
            </label>
            <nav class="navbar">
                <ul>
                    <li><a href="/ProyectoHoteles/Ofertas"> Paquetes</a></li> <!--link para acceder a la pagina de edison  -->
                    <li><a href="/ProyectoHoteles/Hoteles"> Hoteles</a></li> <!--link para acceder a la pagina de carlos -->
                    <li class="dropdown">
                    <a href="#Aliados">Nuestros Aliados</a>
                        <div class="dropdown-content">
                            <a href="https://www.trivago.com.co/es-CO/srl?themeId=280&search=200-100&sem_keyword=trivago&sem_creativeid=72293255966921&sem_matchtype=be&sem_network=o&sem_device=c&sem_campaignid=446438526&sem_adgroupid=1156688087456690&sem_targetid=72293714336166&cipc=br&cip=5719111111&msclkid=e28911dd2f3e14056cac77db36b8d86c&utm_source=bing&utm_medium=cpc&utm_campaign=CO_es_Search_HT_A_HTtrivago_EM&utm_term=trivago&utm_content=CO_es_Search_HT_A_HTtrivago_EM">Trivago</a>
                            <a href="https://www.avianca.com/es?msclkid=30c60b73a4231da48aa36d75be698824&utm_source=bing&utm_medium=cpc&utm_campaign=BS%3Aes-CO_BR%5CCore%2FGeo@BOG-G12300851963&utm_term=avianca&utm_content=BS%3Aes-CO_BR%5CCore%3DAV%2FEX@Avianca">Avianca</a>
                        </div>
                    </li>
                    <li><a href="https://www.youtube.com/watch?v=D7GX8oBZ3BM">Lugares Sugeridos</a></li>
                </ul>
            </nav>
        </div>
        <div class="header-content container">
            <h1>FLYING HIGH</h1>
            <P>
                ¡Bienvenido a nuestra página de hoteles, tu destino definitivo para encontrar el alojamiento perfecto
                para tus próximas aventuras! Sumérgete en el mundo de la hospitalidad y el confort mientras exploras una
                amplia gama de opciones diseñadas para satisfacer tus necesidades y superar tus expectativas.
            </P>
            <a href="https://revistadiners.com.co/estilo-de-vida/viajes/76787_10-hoteles-de-lujo-para-conocer-en-colombia/"
                class="btn1">Informacion</a> <!--link para acceder a mas informacion  -->
        </div>
    </header>
	 <h2>${datos}</h2>  

    <section id="hoteles">
        <div class="hoteles-content container">
            <h2>Los Diferentes Tipos De Hoteles</h2>
            <p class="txr-p">
                Explora nuestras opciones de alojamiento en destinos de todo el mundo, desde vibrantes ciudades hasta
                pintorescos pueblos costeros y exuberantes paisajes naturales. Con la comodidad de reservar en línea y
                la garantía de un servicio excepcional, estamos aquí para hacer que tu viaje sea lo más sencillo y
                placentero posible.
            </p>
            <div class="hoteles-group">
                <div class="hoteles-1">
                    <img src="images/hotel1.jpg" alt="">
                    <h3>Exquisito Oasis 5 Estrellas</h3>
                    <P> Sumérgete en un mundo de lujo y elegancia en el Exquisito Oasis, un destino de ensueño donde
                        cada detalle está meticulosamente diseñado para ofrecerte una experiencia inolvidable. Ubicado
                        en el corazón de una ciudad vibrante (o en un escenario idílico, dependiendo de la ubicación
                        deseada), nuestro hotel de 5 estrellas es un refugio sofisticado que combina el encanto
                        tradicional con las comodidades modernas.
                    </P>
                </div>
                <div class="hoteles-1">
                    <img src="images/hotel2.jpg" alt="">
                    <h3>Winter Hotel</h3>
                    <P>
                        Sumérgete en un mundo de encanto invernal en el Refugio Nevado, un refugio acogedor y cálido en
                        medio de un paisaje nevado espectacular. Ubicado en las majestuosas montañas (o en un entorno
                        nevado idílico, dependiendo de la ubicación deseada), nuestro hotel para invierno es un
                        santuario de comodidad y aventura, perfecto para aquellos que buscan escapar del ajetreo y el
                        bullicio de la vida cotidiana.
                    </P>
                </div>
                <div class="hoteles-1">
                    <img src="images/hotel3.jpg" alt="">
                    <h3>Coastal Paradise</h3>
                    <P>
                        Sumérgete en la serenidad del océano y la suave brisa marina en el Paraíso Costero, un refugio
                        idílico situado en la tranquila costa (o en una playa espectacular, dependiendo de la ubicación
                        deseada). Nuestro hotel de playa es un santuario de relajación y aventura, donde cada momento se
                        teje con la magia del mar y la belleza natural que te rodea
                </div>
            </div>
        </div>
        <a href="#" class="btn1">Informacion</a>
        </div>
    </section>
  <section id="Categorias">
        <h3>CATEGORIAS</h3>
        <ul>
          <li>3 Estrellas</li>
          <li>4 Estrellas</li>
          <li>5 Estrellas</li>
        </ul>
        <br>
        <input type="text" id="nueva-categoria" placeholder="Ingrese una nueva categoría">
        <button type="button" id="agregar-categoria">agregar-categoria</button>
      </section>

    <main id="services">
        <div class="services-content container">

            <h2>PAQUETES & PROMOCIONES</h2>
            <div class="services-group">
                <div class="services-1">
                    <img src="images/hto 1.png" alt="">
                    <h3>Paquete 1</h3>
                </div>
                <div class="services-1">
                    <img src="images/hto 2.png" alt="">
                    <h3>Paquete 2</h3>
                </div>
                <div class="services-1">
                    <img src="images/hto 3.png" alt="">
                    <h3>Paquete 3</h3>
                </div>
                <div class="services-1">
                    <img src="data:image/jpeg;base64,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" alt="">
                    <h3>Paquete 4</h3>
                </div>
            </div>
            <p>
                "¡Bienvenidos a una experiencia única de hospedaje y relajación! En nuestro hotel, nos enorgullece
                ofrecer una variedad de paquetes y promociones diseñados para satisfacer todas las necesidades y deseos
                de nuestros huéspedes. Desde escapadas románticas hasta aventuras familiares, tenemos algo especial para
                cada ocasión. Sumérjase en el lujo y la comodidad mientras exploramos juntos las emocionantes ofertas
                que hemos preparado para hacer de su estancia una experiencia inolvidable
            </p>
        </div>
    </main>

    <section id="blog">
        <h2>BLOG DE NOVEDADES</h2>
        <p> Tómate un momento para relajarte, imagina el destino de tus sueños y déjanos guiarte a través de un mundo de
            comodidad, lujo y experiencias inolvidables. ¡Bienvenidos a nuestro viaje por el mundo de los hoteles!</p>
        <div class="blog-content">
            <div class="blog-1">
                <img src="images/blog1.jpg" alt="">
                <h3>Comodidad</h3>
                <p>
                    En nuestro hotel, la comodidad es mucho más que una simple comodidad; es un compromiso con tu
                    bienestar y satisfacción en cada momento de tu estancia. Desde el momento en que cruzas nuestras
                    puertas, te envolvemos en un ambiente de serenidad y calidez, diseñado para hacer que te sientas
                    como en casa, pero con un toque de lujo añadido.
                </p>
            </div>
            <div class="blog-1">
                <img src="images/blog2.jpg" alt="">
                <h3>Lujo y Diversion</h3>
                <p>
                    Bienvenido a un oasis de indulgencia y entretenimiento en nuestro lujoso hotel. Desde el momento en
                    que pones un pie en nuestras elegantes instalaciones, te sumergirás en un mundo de confort y placer.
                    Nuestra misión es brindarte una experiencia inolvidable, donde cada detalle está cuidadosamente
                    diseñado para satisfacer tus deseos más exigentes.
                </p>
            </div>
            <div class="blog-1">
                <img src="images/promo.jpg" alt="">
                <h3>Promocion Especial</h3>
                <p>
                    Estamos encantados de presentarles nuestra última oferta especial para escapadas inolvidables.
                    Sumérjase en la esencia del descanso y la aventura mientras exploramos juntos las maravillas que
                    tenemos reservadas para usted.
                </p>
            </div>
        </div>
    </section>
    <section class="formu">
        <h2>DEJANOS TUS DATOS PARA RECIBIR NOTIFICACIONES DE PROMOCIONES</h2>
        <form method = "post" action="inicio">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="Telefono">Telefono:</label>
            <input type="text" id="Telefono" name="telefono" required> 
            <button type="submit">Enviar</button>          
        </form>
    </section>
  
<footer class="footer">
        <div class="footer-content container">
                <h3>&copy; 2024 FLYING HIGH</h3>
                <ul>
                    <li>Edison forero</li>
                    <li>Carlos Steven Marin</li>
                    <li>Damian Naranjo </li>
                </ul>
            </div>
    </footer>
    <a href="#" class="btn1">Informacion</a>

<!--    <img id="imagen" src="images/logo.jpeg" alt="">
    <script>
        var imagen = document.getElementById("imagen")
        var x = 0 ;
        var y = 0 ;
        function MoverImagen(){
            x += 1
            y += 1;
            imagen.style.left = x+ "px";
            imagen.style.top = x+ "px";
        }
        setInterval(MoverImagen, 6)
    </script> -->
<script src="java.js"></script>
</body>

</html>
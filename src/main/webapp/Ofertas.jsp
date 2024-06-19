<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parcial1 ProgramacionIII</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" type="image/x-icon" href="images/icon.ico">
 <link rel="stylesheet" href="css/estilos.css">

    <title>Agregar nuevo destino</title>
</head>
    <header>
        <nav> 
            <ul>
                <li><a href="/ProyectoHoteles/inicio">Incio</a></li>
                <li><a href="/ProyectoHoteles/Hoteles">Hoteles</a></li>
                <li><a href="#destinos">Destinos</a></li>
                <li><a href="#ofertas">Ofertas</a></li>
                <li><a href="#HOT SALE">Hot Sale</a></li>
                <li class="dropdown">
                    <a href="#hot-sale">Hot Sale Temporada</a>
                    <div class="dropdown-content">
                        <a href="https://www.turismocity.com.co/?msclkid=f2786d5e72711ac4705f0b5877c52a30&utm_source=bing&utm_medium=cpc&utm_campaign=TC%20BICO%20-%20OTAs%20-%20Despegar&utm_term=Despegar&utm_content=Despegar%20-%20Gen%C3%A9rico">Vuelos</a>
                        <a href="https://www.airbnb.com.co/">Hoteles</a>
                    </div>
                </li>
                <li><a href="https://www.youtube.com/watch?v=D7GX8oBZ3BM">Lugares Sugeridos</a></li>
            </ul>
        </nav>
        <h1>FLYING HIGH</h1> 
    </header>
    <main>
        <section id="destinos">
            <h2>Destinos Populares</h2> 
            <ul>
                <li>Santa Martha</li>
                <li>Cartagena</li>
                <li>Medellin</li>
                <li>Amazonas</li>
                <li>
                    San Andres
                    <ul>
                        <li>Acuario</li>
                        <li>Jony Kay</li>
                        <li>Tour velero</li>
                    </ul>
                </li>
                <li>
                    Eje Cafetero
                    <ul>
                        <li>parque recuca</li>
                        <li>parque de cafe</li>
                        <li>finlandia,salento</li>
                        <img src="images/hot sale4.jpg" alt="Imagen 1" width="300" height="250">
                    </ul>
                </li>
            </ul>
        </section>
        <section id="ofertas">
            <h2>Ofertas Especiales</h2>
            <p>¡Aprovecha nuestras ofertas especiales para tus próximas vacaciones, reserva con anticipación y podrás obtener grandes beneficios!</p>
        </section>
        <section>
            <h2>Super Promo</h2>
            <img src="images/san andres slaider1.jpg" alt="Imagen 1" width="300" height="250">
            <img src="images/super pro.jpg" alt="Imagen 2" width="350" height="250">
            <img src="images/produc1.jpg" alt="Imagen 3" width="300" height="250">
            <img src="images/produc2.jpg" alt="Imagen 4" width="300" height="250">
        </section>
        <section id="HOT SALE">
            <h2>Hot Sale</h2>
            <img src="images/hot sal.jpg" alt="Imagen 4" width="310" height="250">
            <img src="images/hot sal2.jpg" alt="Imagen 4" width="310" height="250">
            <img src="images/hot sale3.jpg" alt="Imagen 4" width="310" height="250">
            <img src="images/hot sale4.jpg" alt="Imagen 4" width="310" height="250">
        </section>
        <section>
            <h2>Ubicacion</h2>
            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d10464.811255423807!2d-74.14167751319118!3d4.613555816155221!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2sus!4v1711556729737!5m2!1ses!2sus" width="300" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </section>
        <section>
            <h2>Destinos Preferidos</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/JCKqkzfGvEA?si=-8UG5xEWjmCIOrKh" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </section>

        <section>
            <h2>Valoracion De Nuestros Clientes</h2>
            <table>
                <tr>
                    <th>DESTINO</th>
                    <th>EFECTIVIDAD PLANES</th>
                </tr>
                <tr>
                    <td>Santa Martha</td>
                    <td>98%</td>
                </tr>
                <tr>
                    <td>San Andres</td>
                    <td>97%</td>
                </tr>
                <tr>
                    <td>Medellin</td>
                    <td>96%</td>
                </tr>
                <tr>
                    <td>Eje Cafetero</td>
                    <td>99%</td>
                </tr>
            </table>
        </section>
    </main>
    <section>
        <h2>Deja Tus Datos ¡TE CONTACTAREMOS!</h2>
             <form method = "post" action="Ofertas">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="telefono">Numero de Contacto:</label>
                <input type="tel" id="telefono" name="telefono" required maxlength="15">
                <label for="mensaje">Mensaje:</label>
                <textarea id="mensaje" name="mensaje" required></textarea>
                <button type="submit">Enviar</button>
            </form>
    </section>
    <footer>
        <p>&copy; 2024 FLYING HIGH</p>
    </footer>
    <script src="java.js"></script>
</body>
</html>
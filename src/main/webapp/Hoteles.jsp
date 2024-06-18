<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscador de Hoteles</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <header id="header">
        <div class="menu container">
            <a href="https://dnaranjop.github.io/Primer-parcial/">
                <img class="logo" src="images/LOGO_EDITADO_BLANCO.png" />
            </a>
            <nav id="navbar">
                <ul>
                    <li><a href="https://dnaranjop.github.io/Primer-parcial/">Inicio</a></li>
                    <li><a href="https://edisonfr.github.io/Primer-parcial/">Paquetes</a></li>
                    <li><a href="#">Hoteles</a></li>
                    <li><a href="#">Contacto</a></li>
                    <li><a href="https://www.youtube.com/watch?v=D7GX8oBZ3BM">Lugares Sugeridos</a></li>
                </ul>
            </nav>
        </div>
        <div class="h_contenedor-header-hotel">
            <h1>Encuentra y Reserva tu Estancia Ideal <br> ¡Hoy Mismo!</h1>
            <p>Explora nuestra variedad de hoteles y encuentra tu lugar ideal. Usa nuestros filtros por destino, precio y comodidades para hallar lo que necesitas. ¡Comienza tu aventura ahora para una experiencia memorable!</p>
        </div>
    </header>

    <div class="h_buscador-hoteles">
        <form class="h_formulario">
            <div class="h_grupo">
                <label for="h_destino">¿Adónde vas?</label>
                <input type="text" id="h_destino" name="destino" placeholder="Ciudad">
            </div>
            <div class="h_grupo">
                <label for="h_fecha-entrada">Fecha de Entrada</label>
                <input type="date" id="h_fecha-entrada" name="fecha_entrada">
            </div>
            <div class="h_grupo">
                <label for="h_fecha-salida">Fecha de Salida</label>
                <input type="date" id="h_fecha-salida" name="fecha_salida">
            </div>
            <div class="h_grupo">
                <label for="h_adultos">Adultos</label>
                <input type="number" id="h_adultos" name="adultos" value="1" min="1">
            </div>
            <div class="h_grupo">
                <label for="h_ninos">Niños</label>
                <input type="number" id="h_ninos" name="ninos" value="0" min="0">
            </div>
            <div class="h_grupo">
                <label for="h_habitaciones">Habitaciones</label>
                <input type="number" id="h_habitaciones" name="habitaciones" value="1" min="1">
            </div>
            <div class="h_grupo">
                <button type="submit">Buscar</button>
            </div>
        </form>
    </div>

    <div id="h_cuerpo-contenido-hotel">
        <div id="h_sidebar">
            <section>
                <li>
                    <label for="h_checkbox-recomendados">Mostrar hoteles recomendados</label>
                    <input type="checkbox" id="h_checkbox-recomendados">
                </li>
            </section>
            <section>
                <h2>Filtros</h2>
                <ul>
                    <li>
                        <h3>Número de Estrellas</h3>
                        <input type="number" id="h_input-num-estrellas" min="1" max="5">
                    </li>
                    <li>
                        <h3>Precio</h3>
                        <input type="checkbox" id="h_filtro-bajo" value="bajo">
                        <label for="h_filtro-bajo">Bajo</label>
                        <input type="checkbox" id="h_filtro-medio" value="medio">
                        <label for="h_filtro-medio">Medio</label>
                        <input type="checkbox" id="h_filtro-alto" value="alto">
                        <label for="h_filtro-alto">Alto</label>
                    </li>
                    <li>
                        <h3>Comodidades</h3>
                        <input type="checkbox" id="h_wifi" value="wifi">
                        <label for="h_wifi">Wifi</label>
                        <input type="checkbox" id="h_piscina" value="piscina">
                        <label for="h_piscina">Piscina</label>
                        <input type="checkbox" id="h_spa" value="spa">
                        <label for="h_spa">Spa</label>
                    </li>
                    <button>Filtrar</button>
                </ul>
            </section>
        </div>

        <div class="h_contenido-hoteles">
            <div id="h_div-mapa-hoteles"></div>
            <div class="h_hoteles-bogota">
                <section class="h_seccion-variable-hoteles">
                    <img class="h_imagen-contenido-hoteles" src="images/Baluarte_Cartagena_Hotel_Boutique.png">
                    <div class="h_div-descripcion-contenido-hoteles">
                        <div>
                            <h3 class="h_h3-contenido-hoteles">Baluarte Hotel Boutique</h3>
                            <h4 class="h_h4-contenido-hoteles">Bogotá D.C.</h4>
                        </div>
                        <div class="h_div-puntuacion-contenido-hoteles">
                            <div class="h_puntacion-hoteles">8.2</div>
                            <div class="h_precio-contenido-hoteles">COP 754.120</div>
                        </div>
                    </div>
                </section>
                <section class="h_seccion-variable-hoteles">
                    <img class="h_imagen-contenido-hoteles" src="images/Hotel_Almirante_Col.png">
                    <div class="h_div-descripcion-contenido-hoteles">
                        <div>
                            <h3 class="h_h3-contenido-hoteles">Hotel Almirante</h3>
                            <h4 class="h_h4-contenido-hoteles">Bogotá D.C.</h4>
                        </div>
                        <div class="h_div-puntuacion-contenido-hoteles">
                            <div class="h_puntacion-hoteles">8.3</div>
                            <div class="h_precio-contenido-hoteles">COP 686.299</div>
                        </div>
                    </div>
                </section>
                <section class="h_seccion-variable-hoteles">
                    <img class="h_imagen-contenido-hoteles" src="images/Ibis_Marbella.png">
                    <div class="h_div-descripcion-contenido-hoteles">
                        <div>
                            <h3 class="h_h3-contenido-hoteles">Ibis Marbella</h3>
                            <h4 class="h_h4-contenido-hoteles">Bogotá D.C.</h4>
                        </div>
                        <div class="h_div-puntuacion-contenido-hoteles">
                            <div class="h_puntacion-hoteles">7.6</div>
                            <div class="h_precio-contenido-hoteles">COP 585.000</div>
                        </div>
                    </div>
                </section>
                <section class="h_seccion-variable-hoteles">
                    <img class="h_imagen-contenido-hoteles" src="images/Hotel_Hernandez_GTC.png">
                    <div class="h_div-descripcion-contenido-hoteles">
                        <div>
                            <h3 class="h_h3-contenido-hoteles">Hotel Hernandez GTC</h3>
                            <h4 class="h_h4-contenido-hoteles">Bogotá D.C.</h4>
                        </div>
                        <div class="h_div-puntuacion-contenido-hoteles">
                            <div class="h_puntacion-hoteles">8.1</div>
                            <div class="h_precio-contenido-hoteles">COP 332.100</div>
                        </div>
                    </div>
                </section>
            </div>
            <div id="h_div-recomendados-hotel"></div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 FLYING HIGH</p>
    </footer>
    <script src="scripts/scripts.js"></script>
    <script src="hoteles.js"></script>
</body>
</html>

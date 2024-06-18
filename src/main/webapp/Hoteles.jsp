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
                <label>Adultos</label>
                <div class="h_contador">
                    <button type="button" onclick="decrement('h_adultos')">-</button>
                    <input type="text" id="h_adultos" name="adultos" value="1" readonly>
                    <button type="button" onclick="increment('h_adultos')">+</button>
                </div>
            </div>
            <div class="h_grupo">
                <label>Niños</label>
                <div class="h_contador">
                    <button type="button" onclick="decrement('h_ninos')">-</button>
                    <input type="text" id="h_ninos" name="ninos" value="0" readonly>
                    <button type="button" onclick="increment('h_ninos')">+</button>
                </div>
            </div>
            <div class="h_grupo">
                <label>Habitaciones</label>
                <div class="h_contador">
                    <button type="button" onclick="decrement('h_habitaciones')">-</button>
                    <input type="text" id="h_habitaciones" name="habitaciones" value="1" readonly>
                    <button type="button" onclick="increment('h_habitaciones')">+</button>
                </div>
            </div>
            <div class="h_grupo">
                <button type="submit">Buscar</button>
            </div>
        </form>
    </div>
    <script src="scripts.js"></script>
</body>
</html>

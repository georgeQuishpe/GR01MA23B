<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/registrarLibro.css">
    <title>Registrar Libro</title>
    <script>
        function validarNumero(input) {
            var regex = /[^0-9]/g;
            input.value = input.value.replace(regex, '');
            if (input.value.length === 0) {
                document.getElementById('mensaje').innerHTML = "Ingresa al menos un número.";
            } else {
                document.getElementById('mensaje').innerHTML = "";
            }
        }
    </script>
</head>
<body>

<div id="formulario">

    <h1>Registrar Libro</h1>

    <br>

    <form action="libro" method="post">
        <label for="idLibro">ID libro:</label>
        <input type="text" id="idLibro" name="idLibro" oninput="validarNumero(this)" maxlength="3" required>

        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required>

        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" required>

        <label for="genero">Género:</label>
        <input type="text" id="genero" name="genero" required>

        <label>Disponibilidad:</label>
        <div class="radio-container">
            <label for="disponible">Disponible:</label>
            <input type="radio" id="disponible" name="disponibilidad" value="disponible">
            <label for="noDisponible">No disponible:</label>
            <input type="radio" id="noDisponible" name="disponibilidad" value="no_disponible">
        </div>

        <br>
        <br>

        <div class="botones">
            <button type="submit" name="action" value="registrarLibro">Guardar</button>
            <button type="button" class="cancelar" onclick="window.location.href='index.jsp'">Cancelar</button>
        </div>
    </form>

    <% String errorMensaje = (String) session.getAttribute("errorMensaje"); %>
    <% if (errorMensaje != null && !errorMensaje.isEmpty()) { %>
    <div class="error-message">
        <%= errorMensaje %>
    </div>
    <% } %>
</div>

</body>
</html>
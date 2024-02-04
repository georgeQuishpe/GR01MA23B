<%@ page import="modelos.ClaseEstudiante" %>
<%@ page import="java.util.List" %>
<%@ page import="modelos.ClaseLibro" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://kit.fontawesome.com/cd7314d904.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/style.css">

    <title>Mi Biblioteca - Libros</title>
</head>

<body>
<!-- =============== Navigation ================ -->
<div class="container">
    <div class="navigation">
        <ul>
            <li>
                <a href="librosGeneral.jsp">
                        <span class="icon">
                            <i class="fa-solid fa-book-open-reader"></i>
                        </span>
                    <span class="title">Mi Biblioteca</span>
                </a>
            </li>

            <li>
                <a href="#">
                        <span class="icon active">
                            <i class="fa-solid fa-book"></i>
                        </span>
                    <span class="subtitle">Libro</span>
                </a>
            </li>

            <li>
                <a href="#">
                        <span class="icon">
                            <i class="fa-solid fa-user"></i>
                        </span>
                    <span class="subtitle">Estudiante</span>
                </a>
            </li>

            <li>
                <a href="#">
                        <span class="icon">
                            <i class="fa-regular fa-handshake text-white"></i>
                        </span>
                    <span class="subtitle">Prestamo</span>
                </a>
            </li>

            <li>
                <a href="#">
                        <span class="icon">
                            <i class="fa-solid fa-rotate-left text-white"></i>
                        </span>
                    <span class="subtitle">Devolucion</span>
                </a>
            </li>
        </ul>
    </div>

    <!-- ========================= Main ==================== -->
    <div class="main">
        <div class="details">
            <div class="recentOrders">
                <div class="cardHeader">
                    <h2>Lista de Libros</h2>
                    <a href="registrarLibro.jsp" class="btn">Registrar</a>
                </div>

                <table>
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Género</th>
                        <th>Disponibilidad</th>
                        <th>Eliminar</th>
                    </tr>
                    </thead>

                    <tbody>


                    <%
                        List<ClaseLibro> listaLibros = (List) request.getSession().getAttribute("listaLibros");
                        String disponibilidad;
                        for (ClaseLibro libro : listaLibros) {
                            disponibilidad = libro.getDisponibilidad() ? "Disponible" : "No Disponible";
                    %>
                    <tr>
                        <td><%=libro.getIdLibro()%>
                        </td>
                        <td><%=libro.getTitulo()%>
                        </td>
                        <td><%=libro.getAutor()%>
                        </td>
                        <td><%=libro.getGenero()%>
                        </td>
                        <td><span class="status" data-disponibilidad="<%=disponibilidad%>"><%=disponibilidad%></span></td>
                        <td><i class="fa-solid fa-trash icon-table"></i></td>
                    </tr>

                    <script>
                        var elementosDisponibilidad = document.querySelectorAll('.status');
                        elementosDisponibilidad.forEach(function (elemento) {
                            var disponibilidad = elemento.getAttribute('data-disponibilidad');
                            if (disponibilidad.trim() === "Disponible") {
                                elemento.classList.add('delivered');
                            } else if (disponibilidad.trim() === "No Disponible") {
                                elemento.classList.add('return');
                            }
                        });
                    </script>

                    <%}%>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<script src="assets/js/main.js"></script>
</body>

</html>

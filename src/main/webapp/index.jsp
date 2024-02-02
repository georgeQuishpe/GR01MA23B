<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://kit.fontawesome.com/cd7314d904.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/style.css">

    <title>Mi Biblioteca</title>
</head>

<body>
<!-- =============== Navigation ================ -->
<div class="container">
    <div class="navigation">
        <ul>
            <li>
                <a href="#">
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
                    <tr>
                        <td>57578</td>
                        <td>Harry Potter</td>
                        <td>J.K Rowling</td>
                        <td>Fantasía</td>
                        <td><span class="status delivered">Disponible</span></td>
                        <td><i class="fa-solid fa-trash icon-table"></i></td>
                    </tr>

                    <tr>
                        <td>12345</td>
                        <td>Cien años de soledad</td>
                        <td>Gabriel García Márquez</td>
                        <td>Realismo mágico</td>
                        <td><span class="status return">No disponible</span></td>
                        <td><i class="fa-solid fa-trash icon-table"></i></td>
                    </tr>

                    <tr>
                        <td>67890</td>
                        <td>El código Da Vinci</td>
                        <td>Dan Brown</td>
                        <td>Suspenso</td>
                        <td><span class="status return">No disponible</span></td>
                        <td><i class="fa-solid fa-trash icon-table"></i></td>
                    </tr>

                    <tr>
                        <td>13579</td>
                        <td>El Señor de los Anillos</td>
                        <td>J.R.R. Tolkien</td>
                        <td>Fantasía épica</td>
                        <td><span class="status delivered">Disponible</span></td>
                        <td><i class="fa-solid fa-trash icon-table"></i></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<script src="assets/js/main.js"></script>
</body>

</html>

package controladores;

import modelos.dao.LibroDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import modelos.ClaseLibro;

import java.io.IOException;

@WebServlet("/librosController")
public class LibroServlet extends HttpServlet {

    @Override
    public void init() {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
/*
        switch (action) {
            case "registrarLibro":{
                registrarLibro(request, response);
                break;
            }
            case "eliminarLibro":{
                eliminarLibro(request, response);
                break;
            }
        }

 */
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

       switch (action) {
            case "listaLibros":{
                actualizarTablas(request, response);
                break;
            }
        }

    }

    private void actualizarTablas(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession sesion = request.getSession();

        sesion.setAttribute("listaLibros", LibroDAO.listarLibros());

        response.sendRedirect("librosGeneral.jsp");
    }

}
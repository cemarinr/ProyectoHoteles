package Inicio;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/inicio")
public class D_inicioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public D_inicioServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        List<String> images = new ArrayList<>();
        images.add("bg2.jpg");
        images.add("blog1.jpg");
        images.add("blog2.jpg");
        images.add("blog3.jpg");
        images.add("hotel1.jpg");
        images.add("hotel2.jpg");
        images.add("hotel3.jpg");
        images.add("hto1.png");
        images.add("hto2.png");
        images.add("hto3.png");
        images.add("icon.ico");
        images.add("logo.jpeg");
        images.add("menu.png");
        images.add("paquetes.jpg");
        images.add("playa.jpg");
        images.add("promo.jpg");

        // Añadir la lista de imágenes al request
        request.setAttribute("images", images);

        // Redirigir a index.jsp
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

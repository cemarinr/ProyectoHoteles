package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Inicio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Inicio() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("name");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		request.setAttribute("datos", "<font color=red>Te enviaremos la informacion al correo "+email+"</font>");
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

}

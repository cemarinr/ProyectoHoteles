package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.ejb.EJB;
import ejbs.ContactarPersonas;

public class Ofertas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private ContactarPersonas ejbContactos;
    public Ofertas() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/Ofertas.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String email = request.getParameter("email");
		String mensaje = request.getParameter("mensaje");
		String telefono = request.getParameter("telefono");
		
		boolean registroExitoso = ejbContactos.ingresarInformacion(nombre, email, mensaje, Long.parseLong(telefono));
		if (registroExitoso) {
			request.setAttribute("registroExitoso", "<p>"+nombre+"Muy Pronto te contactaremos"+"</p>");
			request.getRequestDispatcher("/Ofertas.jsp").forward(request, response);
		}else {
			request.setAttribute("error", "<h3>Intenta de nuevo</h3>");
			request.getRequestDispatcher("/Ofertas.jsp").forward(request, response);
		}
	}

}

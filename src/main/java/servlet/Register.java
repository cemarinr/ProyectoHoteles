
package servlet;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import ejbs.UserAuthManager;


public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private UserAuthManager userManager;
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/register.jsp").forward(request, response);
	}

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String nombre = request.getParameter("nombre");
	        String email = request.getParameter("email");
	        String telefono = request.getParameter("telefono");
	        String password = request.getParameter("password");

	        boolean success = userManager.registerUser(nombre, email, telefono, password);

	        if (success) {
	            request.setAttribute("success", "Registro exitoso. Ahora puedes iniciar sesión.");
	            request.getRequestDispatcher("/login.jsp").forward(request, response);
	        } else {
	            request.setAttribute("error", "Error en el registro. Por favor, intenta nuevamente.");
	        }
	        request.getRequestDispatcher("/register.jsp").forward(request, response);
	    }
	}

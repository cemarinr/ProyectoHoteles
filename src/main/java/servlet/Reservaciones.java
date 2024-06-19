package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Reservacion;
import java.io.IOException;
import java.util.List;
import jakarta.ejb.EJB;
import ejbs.ReservacionesEJB;

public class Reservaciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Reservaciones() {
        super();
        // TODO Auto-generated constructor stub
    }
    @EJB
    ReservacionesEJB reservacionesEJB;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        String username = null;

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("sessionUser")) {
                    username = cookie.getValue();
                    break;
                }
            }
        }
        if (username != null) {
            List<Reservacion> reservas = reservacionesEJB.obtenerReservasPorUsername(username);
            request.setAttribute("reservas", reservas);
            request.getRequestDispatcher("/Reservaciones.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		doGet(request, response);
	}


	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

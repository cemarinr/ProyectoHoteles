package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Hotel;
import ejbs.DatosHoteles;
import ejbs.ReservacionesEJB;
import jakarta.ejb.EJB;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

public class Hoteles extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB
    private DatosHoteles infoHoteles;

    @EJB
    private ReservacionesEJB reservaciones;

    public Hoteles() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Hoteles.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("reservar".equals(action)) {
            // Proceso de reserva
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
                int hotelId;
                try {
                    hotelId = Integer.parseInt(request.getParameter("hotelId"));
                } catch (NumberFormatException e) {
                    response.sendRedirect("error.jsp");
                    return;
                }

                String fechaEntradaStr = request.getParameter("h_fecha_entrada");
                String fechaSalidaStr = request.getParameter("h_fecha_salida");
                int adultos, ninos, habitaciones;

                try {
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    sdf.parse(fechaEntradaStr);
                    sdf.parse(fechaSalidaStr);
                    adultos = Integer.parseInt(request.getParameter("h_adultos"));
                    ninos = Integer.parseInt(request.getParameter("h_ninos"));
                    habitaciones = Integer.parseInt(request.getParameter("h_habitaciones"));
                } catch (ParseException | NumberFormatException e) {
                	System.out.print("fallo en el sql");
                    response.sendRedirect("error.jsp");
                    return;
                }

                boolean reservacionRegistrada = reservaciones.registrarReservacion(username, hotelId, fechaEntradaStr, fechaSalidaStr, adultos, ninos, habitaciones);

                if (reservacionRegistrada) {
                    response.sendRedirect("reservaciones.jsp");
                } else {
                	System.out.print("no hizo la reservacion");
                    response.sendRedirect("error.jsp");
                }
            } else {
                response.sendRedirect("login.jsp");
            }
        } else {
            // Proceso de obtención de hoteles
            String ciudad = request.getParameter("h_destino");
            List<Hotel> listaHoteles = infoHoteles.obtenerHoteles(ciudad);
            boolean datosObtenidos = !listaHoteles.isEmpty();
            request.setAttribute("h_destino", ciudad);
            request.setAttribute("h_fecha_entrada", request.getParameter("h_fecha_entrada"));
            request.setAttribute("h_fecha_salida", request.getParameter("h_fecha_salida"));
            request.setAttribute("h_adultos", request.getParameter("h_adultos"));
            request.setAttribute("h_ninos", request.getParameter("h_ninos"));
            request.setAttribute("h_habitaciones", request.getParameter("h_habitaciones"));
            request.setAttribute("precioFiltro", request.getParameterValues("precioFiltro"));
            request.setAttribute("comodidadFiltro", request.getParameterValues("comodidadFiltro"));

            request.setAttribute("listaHoteles", listaHoteles);
            request.setAttribute("datosObtenidos", datosObtenidos);

            request.getRequestDispatcher("Hoteles.jsp").forward(request, response);
        }
    }
}

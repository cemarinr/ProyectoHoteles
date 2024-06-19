package ejbs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import DB.Conexion;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import models.Reservacion;

@Stateless
@LocalBean
public class ReservacionesEJB implements ReservacionLocal {
	
	
	

		     
    public ReservacionesEJB() {
        
    }
    public List<Reservacion> obtenerReservasPorUsername(String username) {
        List<Reservacion> listaReservas = new ArrayList<>();
        try {
            Connection conexiondb = Conexion.getConnection();
            String consulta = "SELECT r.* FROM reservas r JOIN Usuarios u ON r.usuario_id = u.id WHERE u.username = ?";
            PreparedStatement query = conexiondb.prepareStatement(consulta);
            query.setString(1, username);
            ResultSet resultado = query.executeQuery();
            while (resultado.next()) {
            	Reservacion reserva = new Reservacion();
                reserva.setId(resultado.getInt("id"));
                reserva.setUsuarioId(resultado.getInt("usuario_id"));
                reserva.setHotelId(resultado.getInt("hotel_id"));
                reserva.setFechaInicio(resultado.getDate("fecha_inicio"));
                reserva.setFechaFin(resultado.getDate("fecha_fin"));
                reserva.setFechaReservacion(resultado.getTimestamp("fecha_reservacion"));
                reserva.setEstado(resultado.getString("estado"));
                reserva.setPrecioTotal(resultado.getBigDecimal("precio_total"));
                reserva.setAdultos(resultado.getInt("adultos"));
                reserva.setNinos(resultado.getInt("ninos"));
                reserva.setHabitaciones(resultado.getInt("habitaciones"));
                listaReservas.add(reserva);
            }
            resultado.close();
            query.close();
            Conexion.closeConnection(conexiondb);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaReservas;
    }
    
    public boolean registrarReservacion(String username, int hotelId, String fechaEntrada, String fechaSalida, int adultos, int ninos, int habitaciones) {
        boolean reservacionRegistrada = false;
        try {
            Connection connection = Conexion.getConnection();
            String query = "INSERT INTO reservas (usuario_id, hotel_id, fecha_inicio, fecha_fin, estado, precio_total, adultos, ninos, habitaciones) " +
                           "SELECT id, ?, ?, ?, 'confirmada', 100.0, ?, ?, ? FROM Usuarios WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, hotelId);
            statement.setString(2, fechaEntrada);
            statement.setString(3, fechaSalida);
            statement.setInt(4, adultos);
            statement.setInt(5, ninos);
            statement.setInt(6, habitaciones);
            statement.setString(7, username);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                reservacionRegistrada = true;
            }

            statement.close();
            Conexion.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reservacionRegistrada;
    }

}

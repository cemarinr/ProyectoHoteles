package ejbs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DB.Conexion;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Hotel;

@Stateless
@LocalBean
public class DatosHoteles implements DatosHotelesLocal {

	/**
	 * Default constructor.
	 */
	public DatosHoteles() {

	}

	public List<Hotel> obtenerHoteles(String ciudad) {
		List<Hotel> listaHoteles = new ArrayList<>();
		try {
			Connection conexiondb = Conexion.getConnection();
			String consulta = "SELECT * FROM Hoteles WHERE ciudad = ?";
			PreparedStatement query = conexiondb.prepareStatement(consulta);
			query.setString(1, ciudad);
			ResultSet resultado = query.executeQuery();
			while (resultado.next()) {
				Hotel hotel = new Hotel(resultado.getInt("hotel_id"), resultado.getString("nombre"),
						resultado.getFloat("puntuacion"), resultado.getDouble("valor"),
						resultado.getString("nombre_bd"), resultado.getString("ciudad"));
				listaHoteles.add(hotel);
			}
			resultado.close();
			query.close();
			Conexion.closeConnection(conexiondb);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaHoteles;
	}

}

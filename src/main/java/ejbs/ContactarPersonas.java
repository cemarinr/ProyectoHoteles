package ejbs;

import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DB.Conexion;

@Stateless
@LocalBean
public class ContactarPersonas implements ContactarPersonasLocal {

	public ContactarPersonas() {
		
	}

    public boolean ingresarInformacion(String nombre, String email, String mensaje, Long telefono) {
		boolean informacionRegistrada = false;
		try {
			Connection conexionDB = Conexion.getConnection();
			String consulta = "INSERT INTO contactos (nombre, email, mensaje, telefono) VALUES (?, ?, ?, ?)";
			PreparedStatement  query = conexionDB.prepareStatement(consulta);
			query.setString(1, nombre);
			query.setString(2, email);
			query.setString(3, mensaje);
			query.setLong(4, telefono);
			int filasInsertadas = query.executeUpdate();
			if (filasInsertadas > 0) {
				informacionRegistrada = true;
			}
			query.close();
			Conexion.closeConnection(conexionDB);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return informacionRegistrada;
	}
}

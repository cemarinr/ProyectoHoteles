package ejbs;

import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import DB.Conexion;

@Stateless
@LocalBean
public class UserAuthManager implements UserAuthManagerLocal {


    public UserAuthManager() {
        // TODO Auto-generated constructor stub
    }
    public boolean validarUser(String username, String password) {
        boolean esValido = false;
        try {
            Connection connection = Conexion.getConnection();
            String query = "SELECT password_hash FROM usuarios WHERE email = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String storedHash = resultSet.getString("password_hash");
                if (storedHash.equals(hashPassword(password))) {
                	esValido = true;
                }
            }

            resultSet.close();
            statement.close();
            Conexion.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return esValido;
    }
    public boolean registerUser(String nombre, String email, String telefono, String password) {
    	boolean usuarioRegistrado = false;
    	try {
            Connection connection = Conexion.getConnection();
            String query = "INSERT INTO usuarios (nombre, email, telefono, password_hash) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, nombre);
            statement.setString(2, email);
            statement.setString(3, telefono);
            statement.setString(4, hashPassword(password));
            /*String query = "INSERT INTO usuario_test (nombre, email, telefono, password_hash) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, nombre);
            statement.setString(2, email);
            statement.setString(3, telefono);
            statement.setString(4, hashPassword(password));*/
            
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
            	usuarioRegistrado = true;
            }

            statement.close();
            Conexion.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuarioRegistrado;
    }
    
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(password.getBytes());
            return Base64.getEncoder().encodeToString(hash);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}

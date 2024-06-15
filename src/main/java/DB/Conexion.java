package DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.io.InputStream;
import java.util.Properties;

public class Conexion {
	//Carga el archivo de propiedades de la base de datos
    private static final String PROPERTIES_FILE = "db.properties";
    private static String dbUrl;
    private static String dbUsername;
    private static String dbPassword;
    private static boolean propiedadesDbCargadas = false;
    //es estatico ya que pertenece a la clase quiere decir que se carga automaticamente cuando se carga la clase
    static  {
        try (InputStream input = Conexion.class.getClassLoader().getResourceAsStream(PROPERTIES_FILE)) {
            Properties prop = new Properties();
            if (input == null) {
                System.out.println("Sorry, unable to find " + PROPERTIES_FILE);
                propiedadesDbCargadas = false;
            }
            prop.load(input);
            //establece las variables de confg de la bd
            dbUrl = prop.getProperty("db.url");
            dbUsername = prop.getProperty("db.username");
            dbPassword = prop.getProperty("db.password");
            //Carga el controlador jdbc
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                System.out.println("Error loading JDBC Driver");
                e.printStackTrace();
            }

            // Validación para asegurar que los parámetros se cargaron correctamente
            if (dbUrl == null || dbUsername == null || dbPassword == null) {
                System.out.println("Error: No se cargaron los datos del archivo de propiedades");
                propiedadesDbCargadas = false;
            } else {
            	propiedadesDbCargadas = true;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    //metodo para realizar la conexion de la bd
    public static Connection getConnection() throws SQLException {
        if (propiedadesDbCargadas = false) {
            throw new SQLException("No se cargaron las propiedades de la bd");
        }
        return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
    }
    //metodo para finalizar la conexion
    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

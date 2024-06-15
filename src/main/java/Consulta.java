import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import DB.Conexion;
public class Consulta extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Consulta() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Database Result";

        out.println("""
            <!DOCTYPE html>
            <html>
            <head><title>%s</title></head>
            <body bgcolor="#f0f0f0">
            <h1 align="center">%s</h1>
            """.formatted(title, title));

        try {
            Connection connection = Conexion.getConnection();
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM usuario_test";
            ResultSet resultSet = statement.executeQuery(query);

            out.println("<table border='1' align='center'>");
            out.println("<tr><th>ID</th><th>Nombre</th><th>Email</th></tr>");

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String nombre = resultSet.getString("nombre");
                String email = resultSet.getString("email");
                out.println("<tr>");
                out.println("<td>" + id + "</td>");
                out.println("<td>" + nombre + "</td>");
                out.println("<td>" + email + "</td>");
                out.println("</tr>");
            }

            out.println("</table>");
            resultSet.close();
            statement.close();
            Conexion.closeConnection(connection);

        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error al conectar con la base de datos: " + e.getMessage() + "</p>");
        }

        out.println("</body></html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

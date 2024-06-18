package servlet;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import ejbs.UserAuthManager;

public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @EJB   
    UserAuthManager userLogin;

    public Login() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (userLogin.validarUser(username, password)) {
           Cookie sessionCookie = new Cookie("sessionUser", username);
           sessionCookie.setMaxAge(30 * 60); 
           response.addCookie(sessionCookie); 
           response.sendRedirect("/reservaciones");
        } else {
            request.setAttribute("error", "<font color=red>Invalid username or password</font>");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}

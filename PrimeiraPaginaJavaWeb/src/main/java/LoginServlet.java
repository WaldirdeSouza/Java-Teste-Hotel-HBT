
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usernameOrEmail = request.getParameter("usernameOrEmail");
        String password = request.getParameter("password");
        String photo = request.getParameter("photo");
        // Realizar a verificação no banco de dados
        String authenticatedUsername = authenticateUser(request, usernameOrEmail, password);
        if (authenticatedUsername != null) {
            HttpSession session = request.getSession();
            session.setAttribute("username", authenticatedUsername); // Armazena o nome de usuário na sessão
            RequestDispatcher dispatcher=  request.getRequestDispatcher("./main.jsp");
            dispatcher.forward(request, response);
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
           
            response.sendRedirect("./errorLogin.jsp");
        }
    }

    // Método para autenticar o usuário consultando o banco de dados
    private String authenticateUser(HttpServletRequest request, String usernameOrEmail, String password) {
        String dbUrl = "jdbc:mysql://localhost:3306/hotelhbt";
        String dbUsername = "root";
        String dbPassword = "12345";
        String dbDriver = "com.mysql.cj.jdbc.Driver";

        try {
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
            String sql = "SELECT * FROM user WHERE username = ? OR email = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usernameOrEmail);
            ps.setString(2, usernameOrEmail);
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String storedUsername =   rs.getString("username");
                String storedPassword = rs.getString("pass");
                String storedId_user = rs.getString("id_user");
                String storedPhoto = rs.getString("photo");
                // Comparar a senha armazenada com a senha fornecida pelo usuário
                if (password.equals(storedPassword)) {
                    con.close();
                    HttpSession session = request.getSession();
                    session.setAttribute("username", storedUsername);
                    session.setAttribute("photo", storedPhoto);
                    session.setAttribute("id_user", storedId_user);
                    return storedUsername; 
                    // Retorna o nome de usuário
                    
                }
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
   
}
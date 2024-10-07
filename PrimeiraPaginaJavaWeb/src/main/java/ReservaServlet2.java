
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class ReservaServlet2 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id_reserva = Integer.parseInt(request.getParameter("id_reserva"));
        int id_user = Integer.parseInt(request.getParameter("id_user"));
        String dia_entrada = request.getParameter("dia_entrada");
        String dia_saida = request.getParameter("dia_saida");
        String quantidade_pessoas = request.getParameter("quantidade_pessoas");
        // Realizar a verificação no banco de dados
        String listaHTML = getReservaInfo(id_reserva, id_user, dia_entrada, dia_saida, quantidade_pessoas);
        
        request.setAttribute("listaHTML", listaHTML);
        RequestDispatcher dispatcher = request.getRequestDispatcher("./ListaReservas.jsp");
        dispatcher.forward(request, response);
    }

    // Método para obter informações da reserva no banco de dados e criar uma lista HTML
    private String getReservaInfo(int id_reserva, int id_user, String dia_entrada, String dia_saida, String quantidade_pessoas) {
        StringBuilder listaHTML = new StringBuilder();
        String dbUrl = "jdbc:mysql://localhost:3306/hotelhbt";
        String dbUsername = "root";
        String dbPassword = "12345";
        
        try {
            Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
            String sql = "SELECT * FROM reservas";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id_reserva);
            statement.setInt(2, id_user);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                // Recupere outros campos conforme necessário

                // Crie uma string HTML para cada registro e adicione a uma variável
                String listItem = "<li>ID: " + id + ", Outros Campos: ...</li>";
                listaHTML.append(listItem);
            }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            // Lide com exceções aqui
            e.printStackTrace();
        }
        
        return listaHTML.toString();
    }
}

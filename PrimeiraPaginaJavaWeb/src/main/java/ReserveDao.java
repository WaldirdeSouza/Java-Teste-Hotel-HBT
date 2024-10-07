import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.http.HttpSession;


public class ReserveDao {
    private String dbUrl = "jdbc:mysql://localhost:3306/hotelhbt";
    private String dbusername = "root";
    private String dbPassword = "12345";
    private String dbDriver = "com.mysql.cj.jdbc.Driver";

    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbusername, dbPassword);
        } catch (SQLException e) {
            System.out.println("Falha no acesso ao banco de dados");
            e.printStackTrace();
        }
        return con;
    }

    public String insert(Reservas reservas) {
        loadDriver(dbDriver);
        Connection con = getConnection();
        String result = "Data entered successfully";
        String sql = "INSERT INTO reservas VALUES (?, ?, ?, ?, ?)";
        PreparedStatement pr;
        
        try {
            pr = con.prepareStatement(sql);
            pr.setString(1, null);
            pr.setInt(2, reservas.getId_user());
            pr.setString(3, reservas.getDia_entrada());
            pr.setString(4, reservas.getDia_saida());
            pr.setString(5, reservas.getQuantidade_pessoas());
            pr.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            result = "Falha ao inserir reserva";
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return result;
    }
}


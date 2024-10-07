

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class RegisterDao {
 //Criar ligação  á base de dados Mysql
	//colocar o nome de DB, neste caso "userdb"
	private String dbUrl = "jdbc:mysql://localhost:3306/hotelhbt";
	//colocar o nome de adiministração da BD, por defeito é "root"
	private String dbusername = "root";
	//colocar a password da ligação ao Mysql, password definida durante a instalação
	private String dbPassword = "12345";
	//Driver de ligação á BD Mysql
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	//Realizar a ligação á BD usando os dados declarados nas variaveis de instancia
	// dbUrl, dbusername, dbPassword
	public Connection getConnection() {
		Connection con = null;
		
		try {
			con = DriverManager.getConnection(dbUrl,dbusername,dbPassword);
		} catch(SQLException e) {
			System.out.println("falha no acesso a db");
			e.printStackTrace();
		}
		return con;
	}
	
	//Metodo para inserir um utilizador
	public String insert(User user) {
		loadDriver (dbDriver);
		Connection con = getConnection();
		String result = "Data entered successfuly";
		//colocar o nome da tabela na base de dados
		String sql = "insert into user values(?,?,?,?,?,?)";
		//declarar a variavel "ps" com Objeto que ira conter introduções SQL
		PreparedStatement ps;
				
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		
		try {
			ps = con.prepareStatement(sql);
			 
			ps.setString(1, null);
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPass());
			ps.setString(5, user.getPhoto());
			ps.setString(6, dtf.format(now));
			
			ps.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}	
}



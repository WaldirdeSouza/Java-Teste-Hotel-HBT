

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ReserveReg
 */
public class ReserveReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReserveReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int id_user = Integer.parseInt(request.getParameter("id_user"));
		String dia_entrada = request.getParameter("dia_entrada");
		String dia_saida = request.getParameter("dia_saida");
		String quantidade_pessoas = request.getParameter("quantidade_pessoas");
			
		Reservas reservas = new Reservas(id_user,dia_entrada,dia_saida,quantidade_pessoas);
		ReserveDao reseDao = new ReserveDao();
		String result = reseDao.insert(reservas);
		response.getWriter().print(result);
	}

	


}




import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.*;
import java.io.IOException;




@WebServlet(name = "UserReg", urlPatterns = { "/UserReg" })
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
/**
 * Servlet implementation class UserReg
 */
public class UserReg extends HttpServlet {
	 //private static final long serialVersionUID = 205242440643911308L;
	private static final long serialVersionUID = 1L;
	// private static final String UPLOAD_DIR = ".\\imagensPerfil";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserReg() {
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
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String photo = request.getParameter("photo");
		
		Part filePart = request.getPart("photo");
		String caminhoP = ("C:\\Users\\darke\\Desktop\\eclipse-workspaceEE\\PrimeiraPaginaJavaWeb\\src\\main\\webapp\\imagensPerfil\\");
	    String fileName = filePart.getSubmittedFileName();
	    for (Part part : request.getParts()) {
	      part.write(caminhoP+username+"_"+fileName);
	    }
	    response.getWriter().print("The file uploaded sucessfully."+ fileName);
	  
	    photo = (username+"_"+fileName);
		User user = new User(username,email,pass,photo);
		
		RegisterDao rDao = new RegisterDao();
		
		String result = rDao.insert(user);
		
		
		//response.getWriter().print(result);
		 response.sendRedirect("./login.jsp");		 		 
	}
}

		


